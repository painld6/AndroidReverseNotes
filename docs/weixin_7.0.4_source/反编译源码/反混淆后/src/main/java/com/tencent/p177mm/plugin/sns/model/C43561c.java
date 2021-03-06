package com.tencent.p177mm.plugin.sns.model;

import com.google.android.gms.common.api.Api.BaseClientBuilder;
import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.p177mm.plugin.sns.storage.C29097l;
import com.tencent.p177mm.protocal.protobuf.aao;
import com.tencent.p177mm.protocal.protobuf.acs;
import com.tencent.p177mm.protocal.protobuf.cgy;
import com.tencent.p177mm.sdk.platformtools.C4990ab;
import com.tencent.ttpic.util.VideoMaterialUtil;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.tencent.mm.plugin.sns.model.c */
public final class C43561c {
    /* renamed from: f */
    public static void m77916f(String str, long j, long j2, int i) {
        AppMethodBeat.m2504i(36132);
        if (j2 == 0) {
            AppMethodBeat.m2505o(36132);
            return;
        }
        acs acs;
        acs YV = C13373af.cnJ().mo69177YV(str);
        if (YV == null) {
            acs = new acs();
        } else {
            acs = YV;
        }
        if (j == 0 && acs.wkv.isEmpty()) {
            AppMethodBeat.m2505o(36132);
            return;
        }
        aao aao;
        if (j == 0) {
            j = ((aao) acs.wkv.getFirst()).wfL;
        }
        aao aao2 = new aao();
        aao2.wfL = j;
        aao2.wfM = j2;
        cgy cgy = new cgy();
        cgy.xfQ = j;
        cgy.xfR = j2;
        cgy.xfS = i;
        aao2.wfN.add(cgy);
        while (true) {
            aao = aao2;
            if (acs.wkv.isEmpty()) {
                break;
            }
            aao2 = (aao) acs.wkv.getFirst();
            if (C43561c.m77913U(aao.wfM, aao2.wfL) > 0) {
                C4990ab.m7412e("MicroMsg.FaultLogic", "has a fault: newerMin:" + aao.wfM + " fault.Max" + aao2.wfL);
                break;
            } else {
                acs.wkv.removeFirst();
                aao2 = C43561c.m77915a(aao2, aao);
            }
        }
        acs.wkv.addFirst(aao);
        while (acs.wkv.size() > 100) {
            acs.wkv.removeLast();
        }
        if (acs.wkv.size() > 0) {
            C4990ab.m7410d("MicroMsg.FaultLogic", "min " + ((aao) acs.wkv.get(0)).wfM + " max " + ((aao) acs.wkv.get(0)).wfL);
        }
        C29097l YX = C13373af.cnJ().mo69179YX(str);
        try {
            YX.field_userName = str;
            YX.field_faultS = acs.toByteArray();
            C13373af.cnJ().mo69182c(YX);
        } catch (Exception e) {
        }
        if (acs.wkv.size() > 1) {
            C4990ab.m7410d("MicroMsg.FaultLogic", "fault size : " + acs.wkv.size());
            Iterator it = acs.wkv.iterator();
            while (it.hasNext()) {
                aao2 = (aao) it.next();
                C4990ab.m7410d("MicroMsg.FaultLogic", "min - max " + aao2.wfM + " " + aao2.wfL);
            }
        }
        AppMethodBeat.m2505o(36132);
    }

    /* renamed from: a */
    private static aao m77915a(aao aao, aao aao2) {
        AppMethodBeat.m2504i(36133);
        aao aao3 = new aao();
        if (C43561c.m77913U(aao.wfL, aao2.wfL) > 0) {
            aao3.wfL = aao.wfL;
        } else {
            aao3.wfL = aao2.wfL;
        }
        if (C43561c.m77913U(aao.wfM, aao2.wfM) < 0) {
            aao3.wfM = aao.wfM;
        } else {
            aao3.wfM = aao2.wfM;
        }
        LinkedList linkedList = aao.wfN;
        Iterator it = aao2.wfN.iterator();
        while (it.hasNext()) {
            cgy cgy = (cgy) it.next();
            if (linkedList.isEmpty()) {
                C4990ab.m7412e("MicroMsg.FaultLogic", "fault's segments should not empty!!");
                linkedList.addFirst(cgy);
            } else {
                int i;
                long j = cgy.xfR;
                int size = linkedList.size() - 1;
                while (size >= 0) {
                    if (C43561c.m77913U(j, ((cgy) linkedList.get(size)).xfQ) <= 0) {
                        break;
                    }
                    size--;
                }
                size = -1;
                j = cgy.xfQ;
                int i2 = 0;
                while (true) {
                    i = i2;
                    if (i >= linkedList.size()) {
                        i = linkedList.size();
                        break;
                    } else if (C43561c.m77913U(j, ((cgy) linkedList.get(i)).xfR) >= 0) {
                        break;
                    } else {
                        i2 = i + 1;
                    }
                }
                if (size == -1) {
                    linkedList.addFirst(cgy);
                } else if (i == linkedList.size()) {
                    linkedList.addLast(cgy);
                } else {
                    cgy cgy2 = (cgy) linkedList.get(i);
                    if (C43561c.m77913U(cgy.xfQ, cgy2.xfQ) < 0) {
                        cgy cgy3 = new cgy();
                        cgy3.xfQ = cgy2.xfQ;
                        j = cgy.xfQ;
                        if (j == Long.MAX_VALUE) {
                            j = Long.MIN_VALUE;
                        } else {
                            j++;
                        }
                        cgy3.xfR = j;
                        cgy3.xfS = cgy2.xfS;
                        linkedList.add(i, cgy3);
                        size++;
                        i++;
                    }
                    cgy2 = (cgy) linkedList.get(size);
                    if (C43561c.m77913U(cgy.xfR, cgy2.xfR) > 0) {
                        cgy cgy4 = new cgy();
                        cgy4.xfR = cgy2.xfR;
                        cgy4.xfQ = C43561c.m77917ka(cgy.xfR);
                        cgy4.xfS = cgy2.xfS;
                        linkedList.add(size + 1, cgy4);
                    }
                    while (size >= i) {
                        linkedList.remove(size);
                        size--;
                    }
                    linkedList.add(i, cgy);
                    if (linkedList.size() > 100) {
                        long j2;
                        long j3 = ((cgy) linkedList.getLast()).xfR;
                        long j4 = ((cgy) linkedList.getLast()).xfQ;
                        int i3 = ((cgy) linkedList.getLast()).xfS;
                        while (true) {
                            j2 = j4;
                            if (linkedList.size() < 100) {
                                break;
                            }
                            cgy = (cgy) linkedList.removeLast();
                            j4 = cgy.xfQ;
                            if (cgy.xfS < i3) {
                                i3 = cgy.xfS;
                            }
                        }
                        cgy cgy5 = new cgy();
                        cgy5.xfQ = j2;
                        cgy5.xfR = j3;
                        cgy5.xfS = i3;
                        linkedList.addLast(cgy5);
                    }
                }
            }
        }
        aao3.wfN = linkedList;
        AppMethodBeat.m2505o(36133);
        return aao3;
    }

    /* renamed from: U */
    private static long m77913U(long j, long j2) {
        if ((j <= 0 || j2 <= 0) && (j >= 0 || j2 >= 0)) {
            return j < 0 ? 1 : -1;
        } else {
            return j - j2;
        }
    }

    /* renamed from: ka */
    public static long m77917ka(long j) {
        if (j == Long.MIN_VALUE) {
            return Long.MAX_VALUE;
        }
        return j - 1;
    }

    /* renamed from: a */
    public static int m77914a(long j, long j2, String str) {
        AppMethodBeat.m2504i(36134);
        LinkedList linkedList = C13373af.cnJ().mo69177YV(str).wkv;
        C4990ab.m7417i("MicroMsg.FaultLogic", "getLastReqTimeByMinId fault.count %s", Integer.valueOf(r0.wkv.size()));
        if (linkedList.isEmpty()) {
            AppMethodBeat.m2505o(36134);
            return 0;
        }
        aao aao = (aao) linkedList.getFirst();
        if (j == 0 || C43561c.m77913U(aao.wfM, j) > 0) {
            C4990ab.m7412e("MicroMsg.FaultLogic", "has a fault  minId:" + j2 + " fault.min:" + aao.wfM);
            AppMethodBeat.m2505o(36134);
            return 0;
        } else if (j2 == 0 || C43561c.m77913U(aao.wfL, j2) >= 0) {
            linkedList = aao.wfN;
            if (linkedList.isEmpty()) {
                AppMethodBeat.m2505o(36134);
                return 0;
            }
            Iterator it = linkedList.iterator();
            int i = BaseClientBuilder.API_PRIORITY_OTHER;
            while (it.hasNext()) {
                cgy cgy = (cgy) it.next();
                if (j2 == 0 || C43561c.m77913U(j2, cgy.xfR) >= 0) {
                    if (cgy.xfS < i) {
                        i = cgy.xfS;
                    }
                    if (C43561c.m77913U(j, cgy.xfR) >= 0) {
                        if (i == BaseClientBuilder.API_PRIORITY_OTHER) {
                            AppMethodBeat.m2505o(36134);
                            return 0;
                        }
                        AppMethodBeat.m2505o(36134);
                        return i;
                    }
                }
            }
            C4990ab.m7416i("MicroMsg.FaultLogic", "should not to hear  minId:".concat(String.valueOf(j)));
            AppMethodBeat.m2505o(36134);
            return 0;
        } else {
            C4990ab.m7412e("MicroMsg.FaultLogic", new StringBuilder(VideoMaterialUtil.FRAMES_ID_SEPARATOR_3D).append(j2).append(" fault.max:").append(aao.wfL).toString());
            AppMethodBeat.m2505o(36134);
            return 0;
        }
    }
}
