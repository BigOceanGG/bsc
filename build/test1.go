package main

import (
	"bytes"
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	rlp "github.com/ethereum/go-ethereum/rlp"
)

func main1() {
	// 1. 验证者地址
	validatorAddr := common.HexToAddress("0xed1a760198ef995ad40c6ed2c2f36743b1b1b47b")

	// 2. 编码验证者地址
	var buf bytes.Buffer
	if err := rlp.Encode(&buf, validatorAddr); err != nil {
		panic(fmt.Errorf("failed to encode validator address: %v", err))
	}

	// 3. 构建包含验证者地址的 extraData
	extraData := buf.Bytes()

	// 创建一个空的区块头
	header := &types.Header{
		Extra: extraData,
	}

	// 输出 extraData
	fmt.Printf("Extra data: 0x%x\n", header.Extra)
}
