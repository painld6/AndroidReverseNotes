package com.tencent.mm.protocal.protobuf;

import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.mm.bt.a;
import e.a.a.b;
import java.util.LinkedList;

public final class gg extends a {
    public gh vIo;
    public ge vIp;

    public final int op(int i, Object... objArr) {
        AppMethodBeat.i(58889);
        b bVar;
        int ix;
        if (i == 0) {
            e.a.a.c.a aVar = (e.a.a.c.a) objArr[0];
            if (this.vIo == null) {
                bVar = new b("Not all required fields were included: RsaReqData");
                AppMethodBeat.o(58889);
                throw bVar;
            } else if (this.vIp == null) {
                bVar = new b("Not all required fields were included: AesReqData");
                AppMethodBeat.o(58889);
                throw bVar;
            } else {
                if (this.vIo != null) {
                    aVar.iy(1, this.vIo.computeSize());
                    this.vIo.writeFields(aVar);
                }
                if (this.vIp != null) {
                    aVar.iy(2, this.vIp.computeSize());
                    this.vIp.writeFields(aVar);
                }
                AppMethodBeat.o(58889);
                return 0;
            }
        } else if (i == 1) {
            if (this.vIo != null) {
                ix = e.a.a.a.ix(1, this.vIo.computeSize()) + 0;
            } else {
                ix = 0;
            }
            if (this.vIp != null) {
                ix += e.a.a.a.ix(2, this.vIp.computeSize());
            }
            AppMethodBeat.o(58889);
            return ix;
        } else if (i == 2) {
            e.a.a.a.a aVar2 = new e.a.a.a.a((byte[]) objArr[0], unknownTagHandler);
            for (ix = a.getNextFieldNumber(aVar2); ix > 0; ix = a.getNextFieldNumber(aVar2)) {
                if (!super.populateBuilderWithField(aVar2, this, ix)) {
                    aVar2.ems();
                }
            }
            if (this.vIo == null) {
                bVar = new b("Not all required fields were included: RsaReqData");
                AppMethodBeat.o(58889);
                throw bVar;
            } else if (this.vIp == null) {
                bVar = new b("Not all required fields were included: AesReqData");
                AppMethodBeat.o(58889);
                throw bVar;
            } else {
                AppMethodBeat.o(58889);
                return 0;
            }
        } else if (i == 3) {
            e.a.a.a.a aVar3 = (e.a.a.a.a) objArr[0];
            gg ggVar = (gg) objArr[1];
            int intValue = ((Integer) objArr[2]).intValue();
            LinkedList Vh;
            int size;
            byte[] bArr;
            e.a.a.a.a aVar4;
            boolean z;
            switch (intValue) {
                case 1:
                    Vh = aVar3.Vh(intValue);
                    size = Vh.size();
                    for (intValue = 0; intValue < size; intValue++) {
                        bArr = (byte[]) Vh.get(intValue);
                        gh ghVar = new gh();
                        aVar4 = new e.a.a.a.a(bArr, unknownTagHandler);
                        for (z = true; z; z = ghVar.populateBuilderWithField(aVar4, ghVar, a.getNextFieldNumber(aVar4))) {
                        }
                        ggVar.vIo = ghVar;
                    }
                    AppMethodBeat.o(58889);
                    return 0;
                case 2:
                    Vh = aVar3.Vh(intValue);
                    size = Vh.size();
                    for (intValue = 0; intValue < size; intValue++) {
                        bArr = (byte[]) Vh.get(intValue);
                        ge geVar = new ge();
                        aVar4 = new e.a.a.a.a(bArr, unknownTagHandler);
                        for (z = true; z; z = geVar.populateBuilderWithField(aVar4, geVar, a.getNextFieldNumber(aVar4))) {
                        }
                        ggVar.vIp = geVar;
                    }
                    AppMethodBeat.o(58889);
                    return 0;
                default:
                    AppMethodBeat.o(58889);
                    return -1;
            }
        } else {
            AppMethodBeat.o(58889);
            return -1;
        }
    }
}
