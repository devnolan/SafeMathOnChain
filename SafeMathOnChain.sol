// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

/**
 * @title SafeMathOnChain extend SafeMath
 * @dev Math operations with safety checks that throw on error
 * Create factors multiples on chain for to handle inside EVM
 * Version 1.0 
 */
library SafeMathOnChain {
    /**
     * @dev Multiplies number per factor
     */
    function multiplyOnChain(uint256 a) internal pure returns (uint256) {
        uint128 factor = 100;
        unchecked {
            require(a > 0, "*** multiply error");

            return a * factor;
        }
    }

    /**
     * @dev Multiplies two numbers per factor
     */
    function multiplyOnChain(
        uint256 a,
        uint256 b
    ) internal pure returns (uint256) {
        uint128 factor = 100;
        unchecked {
            require(a > 0, "*** multiply error");
            require(b > 0, "*** multiply error");

            return a * b * factor;
        }
    }

    /**
     * @dev Multiplies two numbers per custom factor and error message
     */
    function multiplyOnChain(
        uint256 a,
        uint256 b,
        uint128 factor,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(a > 0, errorMessage);
            require(b > 0, errorMessage);
            require(factor > 0, errorMessage);

            return a * b * factor;
        }
    }

    /**
     * @dev Integer division of two numbers with factor
     */
    function divisionOnChain(
        uint256 a,
        uint256 b
    ) internal pure returns (uint256) {
        uint128 factor = 100;
        unchecked {
            require(b > 0, "*** divide error");
            require(a > 0, "*** multiply error");

            return (a * factor) / (b * factor);
        }
    }

    /**
     * @dev Integer division of two numbers with custom factor and error message
     */
    function divisionOnChain(
        uint256 a,
        uint256 b,
        uint128 factor,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            require(a > 0, errorMessage);
            require(factor > 0, errorMessage);

            return (a * factor) / (b * factor);
        }
    }

    /**
     * @dev Multiplies two numbers, throws on overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        if (a == 0) {
            return 0;
        }
        c = a * b;
        assert(c / a == b);
        return c;
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // assert(b > 0); // Solidity automatically throws when dividing by 0
        // uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold
        return a / b;
    }

    /**
     * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    /**
     * @dev Adds two numbers, throws on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a + b;
        assert(c >= a);
        return c;
    }

    /**
     * @dev Subtracts two numbers, throws on overflow with custom error message
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Integer division of two numbers with custom error message
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}
