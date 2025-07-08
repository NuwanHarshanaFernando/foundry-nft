//SPDX-License-Identifier: mit

pragma solidity ^0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {
        string memory sadSvg = vm.readFile("./img/sad.svg"); //readFile is a forge cheatcode
        string memory happySvg = vm.readFile("./img/happy.svg");
        console.log(sadSvg);

        vm.startBroadcast();
        MoodNft moodNft = new MoodNft(
            svgToImageURI(sadSvg),
            svgToImageURI(happySvg)
        ); //params as constructor
        vm.stopBroadcast();
        return moodNft;
    }

    // This function do -> base64 -i example.svg
    function svgToImageURI(
        string memory svg
    ) public pure returns (string memory) {
        // example:
        // <svg width="100" height="100"....
        // data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94....
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(
            bytes(string(abi.encodePacked(svg)))
        );
        return string(abi.encodePacked(baseURL, svgBase64Encoded));
    }
}
