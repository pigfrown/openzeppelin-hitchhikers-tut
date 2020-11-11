pragma solidity ^0.5.16;
// Proof of Existence contract, version 1
contract ProofOfExistence2 {
  // state
    bytes32[] private proofs;

  // Transactional function
  // Store a proof in the contract state
    function storeProof(bytes32 proof) private {
        proofs.push(proof);
    }

    // Transactional Function
    // calculate and store the proof for a document
    function notarize(string memory document) public {
        bytes32 proof = proofFor(document);
        storeProof(proof);
    }
    // *read-only function*
    // helper function to get a document's sha256
    function proofFor(string memory document) private pure returns (bytes32) {
        return sha256(bytes(document));
    }
    // *read-only function*
    // Check if a document has been notarized
    function checkDocument(string memory document) public view returns (bool) {
        bytes32 proof = proofFor(document);
        return hasProof(proof);
    }
    // *read-only function*
    // Returns true if a proof is store
    function hasProof(bytes32 proof) private view returns (bool) {
        for (uint256 i = 0; i < proofs.length; i++) {
            if (proofs[i] == proof) {
                return true;
            }
        }
        return false;
    }
}

