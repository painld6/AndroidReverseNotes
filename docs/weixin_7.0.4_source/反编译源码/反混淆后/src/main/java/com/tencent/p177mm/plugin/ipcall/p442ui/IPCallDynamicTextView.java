package com.tencent.p177mm.plugin.ipcall.p442ui;

import android.content.Context;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;
import com.google.android.gms.wearable.WearableStatusCodes;
import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.p177mm.sdk.platformtools.C7306ak;
import java.math.BigDecimal;
import java.text.DecimalFormat;

/* renamed from: com.tencent.mm.plugin.ipcall.ui.IPCallDynamicTextView */
public class IPCallDynamicTextView extends TextView {
    private C7306ak mHandler = new C122651();
    private int mHeight;
    private String mValue;
    DecimalFormat nCA = new DecimalFormat("0.00");
    private String nCB = "";
    private String nCC = "";
    private int nCt;
    private double nCu;
    private double nCv;
    private double nCw;
    private boolean nCx;
    private int nCy = WearableStatusCodes.TARGET_NODE_NOT_CONNECTED;
    private int nCz = 50;

    /* renamed from: com.tencent.mm.plugin.ipcall.ui.IPCallDynamicTextView$2 */
    class C33102 implements OnGlobalLayoutListener {
        C33102() {
        }

        public final void onGlobalLayout() {
            AppMethodBeat.m2504i(22143);
            if (IPCallDynamicTextView.this.nCv != IPCallDynamicTextView.this.nCw) {
                IPCallDynamicTextView.this.mHandler.sendEmptyMessage(1);
            }
            AppMethodBeat.m2505o(22143);
        }
    }

    /* renamed from: com.tencent.mm.plugin.ipcall.ui.IPCallDynamicTextView$1 */
    class C122651 extends C7306ak {
        C122651() {
        }

        public final void handleMessage(Message message) {
            AppMethodBeat.m2504i(22142);
            switch (message.what) {
                case 1:
                    if ((IPCallDynamicTextView.this.nCu <= 0.0d || IPCallDynamicTextView.this.nCv >= IPCallDynamicTextView.this.nCw) && (IPCallDynamicTextView.this.nCu >= 0.0d || IPCallDynamicTextView.this.nCv <= IPCallDynamicTextView.this.nCw)) {
                        IPCallDynamicTextView.this.nCx = false;
                        IPCallDynamicTextView.m44983a(IPCallDynamicTextView.this, IPCallDynamicTextView.this.nCw);
                        break;
                    }
                    IPCallDynamicTextView.this.nCx = true;
                    IPCallDynamicTextView.m44983a(IPCallDynamicTextView.this, IPCallDynamicTextView.this.nCv);
                    IPCallDynamicTextView.this.nCv = IPCallDynamicTextView.this.nCv + IPCallDynamicTextView.this.nCu;
                    IPCallDynamicTextView.this.mHandler.sendEmptyMessageDelayed(1, (long) IPCallDynamicTextView.this.nCz);
                    AppMethodBeat.m2505o(22142);
                    return;
                    break;
            }
            AppMethodBeat.m2505o(22142);
        }
    }

    public IPCallDynamicTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AppMethodBeat.m2504i(22144);
        init();
        AppMethodBeat.m2505o(22144);
    }

    public IPCallDynamicTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AppMethodBeat.m2504i(22145);
        init();
        AppMethodBeat.m2505o(22145);
    }

    private void init() {
        AppMethodBeat.m2504i(22146);
        getViewTreeObserver().addOnGlobalLayoutListener(new C33102());
        AppMethodBeat.m2505o(22146);
    }

    public void setLocHeight(int i) {
        this.nCt = i;
    }

    public final void setValue(String str, String str2) {
        AppMethodBeat.m2504i(22147);
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            setText(str2);
            AppMethodBeat.m2505o(22147);
            return;
        }
        try {
            this.nCv = Double.parseDouble(IPCallDynamicTextView.m44981Pg(str));
            this.nCB = "";
            int i = 0;
            while (i < str2.length() && !Character.isDigit(str2.charAt(i))) {
                this.nCB += str2.charAt(i);
                i++;
            }
            this.nCC = "";
            i = str2.length() - 1;
            while (i > 0 && !Character.isDigit(str2.charAt(i))) {
                this.nCC += str2.charAt(i);
                i--;
            }
            try {
                this.nCw = Double.parseDouble(str2.substring(this.nCB.length(), str2.length() - this.nCC.length()));
                this.mValue = str2;
                this.nCu = (this.nCw - this.nCv) / ((double) (this.nCy / this.nCz));
                if (this.nCu == 0.0d) {
                    setText(str2);
                    AppMethodBeat.m2505o(22147);
                    return;
                }
                this.nCu = new BigDecimal(this.nCu).setScale(2, 4).doubleValue();
                if (isShown()) {
                    this.mHandler.sendEmptyMessage(1);
                }
                AppMethodBeat.m2505o(22147);
            } catch (NumberFormatException e) {
                setText(str2);
                AppMethodBeat.m2505o(22147);
            }
        } catch (NumberFormatException e2) {
            setText(str2);
            AppMethodBeat.m2505o(22147);
        }
    }

    /* renamed from: Pg */
    public static String m44981Pg(String str) {
        AppMethodBeat.m2504i(22148);
        String str2 = "";
        int i = 0;
        while (i < str.length() && !Character.isDigit(str.charAt(i))) {
            str2 = str2 + str.charAt(i);
            i++;
        }
        String str3 = "";
        i = str.length() - 1;
        while (i > 0 && !Character.isDigit(str.charAt(i))) {
            str3 = str3 + str.charAt(i);
            i--;
        }
        String substring = str.substring(str2.length(), str.length() - str3.length());
        AppMethodBeat.m2505o(22148);
        return substring;
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        AppMethodBeat.m2504i(22149);
        super.onMeasure(i, i2);
        this.mHeight = getMeasuredHeight();
        AppMethodBeat.m2505o(22149);
    }
}
