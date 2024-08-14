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
	file     = flag.String("file", "node1/keystore/UTC--2024-08-14T03-20-16.606903330Z--607837901c98d9820230387a844dec52570dbe4e", "file")
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

	fmt.Printf("Address:\t%s\nPrivateKey:\t%s\n",
		address,
		privateKey,
	)
}
