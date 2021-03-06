package com.tencent.p177mm.boot.svg.p708a.p709a;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.os.Looper;
import com.tencent.p177mm.svg.C5163c;
import com.tencent.p177mm.svg.WeChatSVGRenderC2Java;
import com.tencent.smtt.sdk.WebView;

/* renamed from: com.tencent.mm.boot.svg.a.a.bbg */
public final class bbg extends C5163c {
    private final int height = 16;
    private final int width = 12;

    /* renamed from: a */
    public final int mo10620a(int i, Object... objArr) {
        switch (i) {
            case 0:
                return 12;
            case 1:
                return 16;
            case 2:
                Canvas canvas = (Canvas) objArr[0];
                Looper looper = (Looper) objArr[1];
                Matrix h = C5163c.m7881h(looper);
                float[] g = C5163c.m7880g(looper);
                Paint k = C5163c.m7883k(looper);
                k.setFlags(385);
                k.setStyle(Style.FILL);
                Paint k2 = C5163c.m7883k(looper);
                k2.setFlags(385);
                k2.setStyle(Style.STROKE);
                k.setColor(WebView.NIGHT_MODE_COLOR);
                k2.setStrokeWidth(1.0f);
                k2.setStrokeCap(Cap.BUTT);
                k2.setStrokeJoin(Join.MITER);
                k2.setStrokeMiter(4.0f);
                k2.setPathEffect(null);
                C5163c.m7876a(k2, looper).setStrokeWidth(1.0f);
                canvas.save();
                Paint a = C5163c.m7876a(k, looper);
                a.setColor(-5066062);
                g = C5163c.m7878a(g, 1.0f, 0.0f, -138.0f, 0.0f, 1.0f, -671.0f);
                h.reset();
                h.setValues(g);
                canvas.concat(h);
                canvas.save();
                g = C5163c.m7878a(g, 1.0f, 0.0f, 66.0f, 0.0f, 1.0f, 602.0f);
                h.reset();
                h.setValues(g);
                canvas.concat(h);
                canvas.save();
                g = C5163c.m7878a(g, 1.0f, 0.0f, 69.0f, 0.0f, 1.0f, 68.0f);
                h.reset();
                h.setValues(g);
                canvas.concat(h);
                canvas.save();
                Paint a2 = C5163c.m7876a(a, looper);
                Path l = C5163c.m7884l(looper);
                l.moveTo(6.15f, 2.4f);
                l.lineTo(6.15f, 13.35697f);
                l.lineTo(13.5f, 13.35697f);
                l.cubicTo(13.83137f, 13.35697f, 14.1f, 13.088341f, 14.1f, 12.756969f);
                l.lineTo(14.1f, 11.400009f);
                l.lineTo(14.1f, 3.0f);
                l.cubicTo(14.1f, 2.6686292f, 13.83137f, 2.4f, 13.5f, 2.4f);
                l.lineTo(6.15f, 2.4f);
                l.close();
                l.moveTo(5.25f, 2.4f);
                l.lineTo(3.9f, 2.4f);
                l.lineTo(3.9f, 13.35697f);
                l.lineTo(5.25f, 13.35697f);
                l.lineTo(5.25f, 2.4f);
                l.close();
                l.moveTo(14.1f, 14.132156f);
                l.cubicTo(13.916262f, 14.212435f, 13.713331f, 14.256969f, 13.5f, 14.256969f);
                l.lineTo(3.9f, 14.256969f);
                l.lineTo(3.9f, 15.6f);
                l.lineTo(13.5f, 15.6f);
                l.cubicTo(13.83137f, 15.6f, 14.1f, 15.33137f, 14.1f, 15.0f);
                l.lineTo(14.1f, 14.132156f);
                l.close();
                l.moveTo(3.0f, 1.5f);
                l.lineTo(13.5f, 1.5f);
                l.cubicTo(14.328427f, 1.5f, 15.0f, 2.171573f, 15.0f, 3.0f);
                l.lineTo(15.0f, 15.0f);
                l.cubicTo(15.0f, 15.828427f, 14.328427f, 16.5f, 13.5f, 16.5f);
                l.lineTo(3.0f, 16.5f);
                l.lineTo(3.0f, 1.5f);
                l.close();
                WeChatSVGRenderC2Java.setFillType(l, 1);
                canvas.drawPath(l, a2);
                canvas.restore();
                canvas.restore();
                canvas.restore();
                canvas.restore();
                C5163c.m7882j(looper);
                break;
        }
        return 0;
    }
}
