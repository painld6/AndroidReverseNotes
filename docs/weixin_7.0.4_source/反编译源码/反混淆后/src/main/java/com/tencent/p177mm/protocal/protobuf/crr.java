package com.tencent.p177mm.protocal.protobuf;

import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.p177mm.p205bt.C1331a;
import java.util.LinkedList;
import p690e.p691a.p692a.C6087a;
import p690e.p691a.p692a.C6092b;
import p690e.p691a.p692a.p693a.C6086a;
import p690e.p691a.p692a.p695b.p697b.C6091a;
import p690e.p691a.p692a.p698c.C6093a;

/* renamed from: com.tencent.mm.protocal.protobuf.crr */
public final class crr extends C1331a {
    public LinkedList<cqt> xoJ = new LinkedList();
    public cqm xoW;
    public int xpj;

    public crr() {
        AppMethodBeat.m2504i(102429);
        AppMethodBeat.m2505o(102429);
    }

    /* renamed from: op */
    public final int mo4669op(int i, Object... objArr) {
        AppMethodBeat.m2504i(102430);
        C6092b c6092b;
        int ix;
        byte[] bArr;
        if (i == 0) {
            C6093a c6093a = (C6093a) objArr[0];
            if (this.xoW == null) {
                c6092b = new C6092b("Not all required fields were included: base_response");
                AppMethodBeat.m2505o(102430);
                throw c6092b;
            }
            if (this.xoW != null) {
                c6093a.mo13479iy(1, this.xoW.computeSize());
                this.xoW.writeFields(c6093a);
            }
            c6093a.mo13474e(2, 8, this.xoJ);
            c6093a.mo13480iz(3, this.xpj);
            AppMethodBeat.m2505o(102430);
            return 0;
        } else if (i == 1) {
            if (this.xoW != null) {
                ix = C6087a.m9557ix(1, this.xoW.computeSize()) + 0;
            } else {
                ix = 0;
            }
            int c = (ix + C6087a.m9552c(2, 8, this.xoJ)) + C6091a.m9572bs(3, this.xpj);
            AppMethodBeat.m2505o(102430);
            return c;
        } else if (i == 2) {
            bArr = (byte[]) objArr[0];
            this.xoJ.clear();
            C6086a c6086a = new C6086a(bArr, unknownTagHandler);
            for (ix = C1331a.getNextFieldNumber(c6086a); ix > 0; ix = C1331a.getNextFieldNumber(c6086a)) {
                if (!super.populateBuilderWithField(c6086a, this, ix)) {
                    c6086a.ems();
                }
            }
            if (this.xoW == null) {
                c6092b = new C6092b("Not all required fields were included: base_response");
                AppMethodBeat.m2505o(102430);
                throw c6092b;
            }
            AppMethodBeat.m2505o(102430);
            return 0;
        } else if (i == 3) {
            C6086a c6086a2 = (C6086a) objArr[0];
            crr crr = (crr) objArr[1];
            int intValue = ((Integer) objArr[2]).intValue();
            LinkedList Vh;
            int size;
            C6086a c6086a3;
            boolean z;
            switch (intValue) {
                case 1:
                    Vh = c6086a2.mo13445Vh(intValue);
                    size = Vh.size();
                    for (intValue = 0; intValue < size; intValue++) {
                        bArr = (byte[]) Vh.get(intValue);
                        cqm cqm = new cqm();
                        c6086a3 = new C6086a(bArr, unknownTagHandler);
                        for (z = true; z; z = cqm.populateBuilderWithField(c6086a3, cqm, C1331a.getNextFieldNumber(c6086a3))) {
                        }
                        crr.xoW = cqm;
                    }
                    AppMethodBeat.m2505o(102430);
                    return 0;
                case 2:
                    Vh = c6086a2.mo13445Vh(intValue);
                    size = Vh.size();
                    for (intValue = 0; intValue < size; intValue++) {
                        bArr = (byte[]) Vh.get(intValue);
                        cqt cqt = new cqt();
                        c6086a3 = new C6086a(bArr, unknownTagHandler);
                        for (z = true; z; z = cqt.populateBuilderWithField(c6086a3, cqt, C1331a.getNextFieldNumber(c6086a3))) {
                        }
                        crr.xoJ.add(cqt);
                    }
                    AppMethodBeat.m2505o(102430);
                    return 0;
                case 3:
                    crr.xpj = c6086a2.BTU.mo13458vd();
                    AppMethodBeat.m2505o(102430);
                    return 0;
                default:
                    AppMethodBeat.m2505o(102430);
                    return -1;
            }
        } else {
            AppMethodBeat.m2505o(102430);
            return -1;
        }
    }
}
