// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "erc721a/contracts/extensions/ERC721AQueryable.sol";

contract TestNFT is ERC721AQueryable {
    constructor() ERC721A("TestNFT", "TNFT") {}

    function mint(uint256 quantity) external payable {
        // _safeMint's second argument now takes in a quantity, not a tokenId.
        _safeMint(msg.sender, quantity);
    }
}
