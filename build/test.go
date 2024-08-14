package main

import (
	"crypto/ecdsa"
	"encoding/hex"
	"flag"
	"fmt"
	"io/ioutil"
	"os"

	"github.com/ethereum/go-ethereum/accounts/keystore"
	"github.com/ethereum/go-ethereum/crypto"
)

var (
	file     = flag.String("file", "/root/UTC--2024-08-14T02-44-26.761151265Z--41ac5b96d761b831c9def0f78d4fcdddc516fa43", "file")
	password = flag.String("password", "123", "password")
)

func init() {
	flag.Parse()
}

func privateKeyToCompressedPublicKey(privateKey *ecdsa.PrivateKey) []byte {
	pubKey := privateKey.PublicKey
	pubKeyBytes := pubKey.X.Bytes()
	compressedPubKey := make([]byte, 33)

	// Determine the prefix: 0x02 if Y is even, 0x03 if Y is odd
	if pubKey.Y.Bit(0) == 0 {
		compressedPubKey[0] = 0x02
	} else {
		compressedPubKey[0] = 0x03
	}

	// Copy the X coordinate to the compressed public key
	copy(compressedPubKey[1:], pubKeyBytes)
	return compressedPubKey
}

func main() {
	if _, err := os.Stat(*file); os.IsNotExist(err) {
		flag.Usage()
		os.Exit(1)
	}

	keyjson, err := ioutil.ReadFile(*file)
	if err != nil {
		panic(err)
	}

	key, err := keystore.DecryptKey(keyjson, *password)
	if err != nil {
		panic(err)
	}

	address := key.Address.Hex()
	privateKey := hex.EncodeToString(crypto.FromECDSA(key.PrivateKey))

	compressedPublicKey := privateKeyToCompressedPublicKey(key.PrivateKey)

	// 打印压缩形式的公钥
	fmt.Printf("Compressed Public Key: %x\n", compressedPublicKey)

	fmt.Printf("Address:\t%s\nPrivateKey:\t%s\nAddress1:\t%s",
		address,
		privateKey,
	)
}
