// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MasterQuestNFT} from "../src/MasterQuestNft.sol";

contract DeployMasterQuestNft is Script {
    uint256 public DEFAULT_ANVIL_KEY =
        0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;
    uint256 public deployerKey;

    function run() external returns (MasterQuestNFT) {
        if (block.chainid == 31337) {
            deployerKey = DEFAULT_ANVIL_KEY;
        } else {
            deployerKey = vm.envUint("SEPOLIA_PRIVATE_KEY");
        }
        vm.startBroadcast();
        MasterQuestNFT nft = new MasterQuestNFT();
        vm.stopBroadcast();
        return nft;
    }
}
