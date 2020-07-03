namespace Qrng {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;

    operation ran() : Result {
        using (q = Qubit()){
            H(q);
            return MResetZ(q);
        }
    }
    @EntryPoint()
    operation main() : Unit {
        using(q = Qubit()){
            H(q);
            let res = M(q);
            Message($"결과: {res}");
        }
    }
}