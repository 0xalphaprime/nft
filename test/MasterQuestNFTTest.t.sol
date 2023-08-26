// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {MasterQuestNFT} from "../src/MasterQuestNFT.sol";
import {DeployMasterQuestNft} from "../script/DeployMasterQuestNft.s.sol";

contract MasterQuestNFTTest is Test {
    DeployMasterQuestNft public deployer;
    MasterQuestNFT public nft;

    function setUp() public {
        deployer = new DeployMasterQuestNft();
        nft = deployer.run();
    }
}
