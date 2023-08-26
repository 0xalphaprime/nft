// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MasterQuestNFT} from "../src/MasterQuestNFT.sol";

contract DeployMasterQuestNft is Script {
    function run() external returns (MasterQuestNFT) {
        vm.startBroadcast();
        MasterQuestNFT nft = new MasterQuestNFT();
        vm.stopBroadcast();
        return nft;
    }
}
