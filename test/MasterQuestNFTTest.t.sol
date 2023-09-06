// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {MasterQuestNFT} from "../src/MasterQuestNft.sol";
import {DeployMasterQuestNft} from "../script/DeployMasterQuestNft.s.sol";
import {StdCheats} from "forge-std/StdCheats.sol";
import {MintMasterQuestNft} from "../script/Interactions.s.sol";
