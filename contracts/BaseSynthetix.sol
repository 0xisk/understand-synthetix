pragma solidity ^0.5.16;

import "./interfaces/IERC20.sol";
import "./ExternStateToken.sol";
import "./MixinResolver.sol";
import "./interfaces/ISynthetix.sol";


contract BaseSynthetix is IERC20, ExternalStateToken, MixinResolver, ISynthetix {
    constructor(
        address payable _proxy
        Token
    ) 
        public

    {}
}