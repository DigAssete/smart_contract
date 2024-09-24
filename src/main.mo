actor ProofOfAuthenticity {
  type DigitalAsset = {
    id: Nat;
    name: Text;
    description: Text;
  };

  type AuthenticityRecord = {
    assetId: Nat;
    timestamp: Int;
    signature: Blob;
  };

  var records: [AuthenticityRecord] = [];

  public func addRecord(assetId: Nat, timestamp: Int, signature: Blob) {
    records := Array.append(records, [AuthenticityRecord { assetId; timestamp; signature }]);
  };

  public func verifyAuthenticity(assetId: Nat) -> Bool {
    for (record in records) {
      if (record.assetId == assetId) {
        return true;
      };
    };
    return false;
  };
};