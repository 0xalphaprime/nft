// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {MasterQuestNFT} from "../src/MasterQuestNft.sol";

contract MintMasterQuestNft is Script {
    string public constant LINK =
        "https://ipfs.io/ipfs/QmVziU5BGsXENPDmynF3JgrPaW82YwgFzeV5YcSU3zZduF?filename=masterQuest.json";
    uint256 deployerKey;

    function run() external {
        address mostReceentlyDeployedMasterQuestNft = DevOpsTools
            .get_most_recent_deployment("MasterQuestNFT", block.chainid);
        mintNftOnContract(mostReceentlyDeployedMasterQuestNft);
    }

    function mintNftOnContract(address masterQuestNftAddress) public {
        vm.startBroadcast();
        MasterQuestNFT(masterQuestNftAddress).mintNft(LINK);
        vm.stopBroadcast();
    }
}
