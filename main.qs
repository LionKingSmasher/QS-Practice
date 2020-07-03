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
    operation cmp(a : Int, b : Int) : Int {
        return a > b
               ? a
               | b;
    }
    @EntryPoint()
    operation main() : Unit {
        let u = cmp(1, 3);
        using(q = Qubit()){
            H(q);
            let res = M(q);
            Message($"결과: {res}\n");
        }
        Message($"결과: {u}");
    }
}