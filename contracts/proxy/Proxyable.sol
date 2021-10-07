pragma solidity ^0.5.16;

// Inheritance
import "../libs/Owned.sol";

// Internal references
import "./Proxy.sol";
contract Proxyable is Owned {
    // This contract should be treated like an abstract contract

    Proxy public proxy;
}
