package com.tencent.mm.protocal.protobuf;

import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.mm.bt.a;

public final class bqv extends a {
    public String luG;
    public String vKF;
    public int wQU;

    public final int op(int i, Object... objArr) {
        AppMethodBeat.i(28614);
        int f;
        if (i == 0) {
            e.a.a.c.a aVar = (e.a.a.c.a) objArr[0];
            if (this.luG != null) {
                aVar.e(1, this.luG);
            }
            if (this.vKF != null) {
                aVar.e(2, this.vKF);
            }
            aVar.iz(3, this.wQU);
            AppMethodBeat.o(28614);
            return 0;
        } else if (i == 1) {
            if (this.luG != null) {
                f = e.a.a.b.b.a.f(1, this.luG) + 0;
            } else {
                f = 0;
            }
            if (this.vKF != null) {
                f += e.a.a.b.b.a.f(2, this.vKF);
            }
            int bs = f + e.a.a.b.b.a.bs(3, this.wQU);
            AppMethodBeat.o(28614);
            return bs;
        } else if (i == 2) {
            e.a.a.a.a aVar2 = new e.a.a.a.a((byte[]) objArr[0], unknownTagHandler);
            for (f = a.getNextFieldNumber(aVar2); f > 0; f = a.getNextFieldNumber(aVar2)) {
                if (!super.populateBuilderWithField(aVar2, this, f)) {
                    aVar2.ems();
                }
            }
            AppMethodBeat.o(28614);
            return 0;
        } else if (i == 3) {
            e.a.a.a.a aVar3 = (e.a.a.a.a) objArr[0];
            bqv bqv = (bqv) objArr[1];
            switch (((Integer) objArr[2]).intValue()) {
                case 1:
                    bqv.luG = aVar3.BTU.readString();
                    AppMethodBeat.o(28614);
                    return 0;
                case 2:
                    bqv.vKF = aVar3.BTU.readString();
                    AppMethodBeat.o(28614);
                    return 0;
                case 3:
                    bqv.wQU = aVar3.BTU.vd();
                    AppMethodBeat.o(28614);
                    return 0;
                default:
                    AppMethodBeat.o(28614);
                    return -1;
            }
        } else {
            AppMethodBeat.o(28614);
            return -1;
        }
    }
}
