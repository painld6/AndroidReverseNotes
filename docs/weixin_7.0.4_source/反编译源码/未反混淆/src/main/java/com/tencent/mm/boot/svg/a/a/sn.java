package com.tencent.mm.boot.svg.a.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.os.Looper;
import com.tencent.mm.svg.WeChatSVGRenderC2Java;
import com.tencent.mm.svg.c;
import com.tencent.smtt.sdk.WebView;

public final class sn extends c {
    private final int height = 60;
    private final int width = 60;

    public final int a(int i, Object... objArr) {
        switch (i) {
            case 0:
                return 60;
            case 1:
                return 60;
            case 2:
                Canvas canvas = (Canvas) objArr[0];
                Looper looper = (Looper) objArr[1];
                c.h(looper);
                c.g(looper);
                Paint k = c.k(looper);
                k.setFlags(385);
                k.setStyle(Style.FILL);
                Paint k2 = c.k(looper);
                k2.setFlags(385);
                k2.setStyle(Style.STROKE);
                k.setColor(WebView.NIGHT_MODE_COLOR);
                k2.setStrokeWidth(1.0f);
                k2.setStrokeCap(Cap.BUTT);
                k2.setStrokeJoin(Join.MITER);
                k2.setStrokeMiter(4.0f);
                k2.setPathEffect(null);
                c.a(k2, looper).setStrokeWidth(1.0f);
                Paint a = c.a(k, looper);
                a.setColor(-16139513);
                canvas.save();
                Paint a2 = c.a(a, looper);
                Path l = c.l(looper);
                l.moveTo(27.52f, 0.0f);
                l.lineTo(32.07f, 0.0f);
                l.cubicTo(46.45f, 0.9f, 58.83f, 13.19f, 60.0f, 27.52f);
                l.lineTo(60.0f, 32.08f);
                l.cubicTo(59.09f, 46.46f, 46.8f, 58.83f, 32.48f, 60.0f);
                l.lineTo(27.93f, 60.0f);
                l.cubicTo(13.55f, 59.1f, 1.17f, 46.81f, 0.0f, 32.48f);
                l.lineTo(0.0f, 27.93f);
                l.cubicTo(0.9f, 13.55f, 13.2f, 1.17f, 27.52f, 0.0f);
                l.lineTo(27.52f, 0.0f);
                l.close();
                l.moveTo(24.383501f, 3.6703784f);
                l.cubicTo(11.597891f, 6.255954f, 1.8089068f, 19.054052f, 3.117434f, 32.111706f);
                l.cubicTo(3.9265237f, 46.387276f, 17.730988f, 58.336826f, 32.024902f, 56.879322f);
                l.cubicTo(46.738342f, 56.09067f, 58.884674f, 41.515614f, 56.75707f, 26.890642f);
                l.cubicTo(55.318687f, 11.726592f, 39.286728f, 0.026614152f, 24.383501f, 3.6703784f);
                l.lineTo(24.383501f, 3.6703784f);
                l.close();
                WeChatSVGRenderC2Java.setFillType(l, 2);
                canvas.drawPath(l, a2);
                canvas.restore();
                canvas.save();
                k2 = c.a(a, looper);
                Path l2 = c.l(looper);
                l2.moveTo(25.0f, 15.0f);
                l2.lineTo(36.0f, 15.0f);
                l2.lineTo(36.0f, 31.0f);
                l2.lineTo(25.0f, 31.0f);
                l2.lineTo(25.0f, 15.0f);
                l2.close();
                canvas.drawPath(l2, k2);
                canvas.restore();
                canvas.save();
                k2 = c.a(k, looper);
                k2.setColor(-16139513);
                l2 = c.l(looper);
                l2.moveTo(14.176433f, 30.047743f);
                l2.lineTo(30.5319f, 46.112846f);
                l2.lineTo(46.914062f, 30.035374f);
                l2.lineTo(14.176433f, 30.047743f);
                l2.close();
                WeChatSVGRenderC2Java.setFillType(l2, 2);
                canvas.drawPath(l2, k2);
                canvas.restore();
                c.j(looper);
                break;
        }
        return 0;
    }
}
