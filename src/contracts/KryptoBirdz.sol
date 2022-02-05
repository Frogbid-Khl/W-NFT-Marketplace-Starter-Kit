// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ERC721Connector.sol";

contract KryptoBird is ERC721Connector {

    string [] public KryptoBirdz;

    mapping(string => bool) _kryptoBirdzExists;

    function mint(string memory _kryptoBird) public {

        require(!_kryptoBirdzExists[_kryptoBird], 'Error: KryptoBird already exists');

        KryptoBirdz.push(_kryptoBird);
        uint _id = KryptoBirdz.length - 1;
        _mint(msg.sender, _id);

        _kryptoBirdzExists[_kryptoBird] = true;
    }


    constructor() ERC721Connector('KryptoBird', 'KBIRD'){

    }
}