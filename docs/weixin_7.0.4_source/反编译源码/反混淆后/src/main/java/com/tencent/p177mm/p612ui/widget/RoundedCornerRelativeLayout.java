package com.tencent.p177mm.p612ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Path.FillType;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.tencent.matrix.trace.core.AppMethodBeat;

/* renamed from: com.tencent.mm.ui.widget.RoundedCornerRelativeLayout */
public class RoundedCornerRelativeLayout extends RelativeLayout {
    private Paint aFY;
    private C15992a zNX;
    private Bitmap zNY;

    /* renamed from: com.tencent.mm.ui.widget.RoundedCornerRelativeLayout$a */
    class C15992a {
        float zNZ = 0.0f;
        float zOa = 0.0f;
        float zOb = 0.0f;
        float zOc = 0.0f;

        C15992a() {
        }
    }

    public RoundedCornerRelativeLayout(Context context) {
        super(context);
        AppMethodBeat.m2504i(107959);
        dKQ();
        AppMethodBeat.m2505o(107959);
    }

    public RoundedCornerRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AppMethodBeat.m2504i(107960);
        dKQ();
        AppMethodBeat.m2505o(107960);
    }

    public RoundedCornerRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AppMethodBeat.m2504i(107961);
        dKQ();
        AppMethodBeat.m2505o(107961);
    }

    private void dKQ() {
        AppMethodBeat.m2504i(107962);
        this.zNX = new C15992a();
        this.aFY = new Paint(1);
        this.aFY.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
        setWillNotDraw(false);
        AppMethodBeat.m2505o(107962);
    }

    public void draw(Canvas canvas) {
        AppMethodBeat.m2504i(107964);
        if (canvas.getWidth() <= 0 || canvas.getHeight() <= 0) {
            AppMethodBeat.m2505o(107964);
            return;
        }
        int saveLayer = canvas.saveLayer(new RectF(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight()), null, 31);
        super.draw(canvas);
        if (this.zNX.zNZ > 0.0f || this.zNX.zOa > 0.0f || this.zNX.zOb > 0.0f || this.zNX.zOc > 0.0f) {
            if (this.zNY == null) {
                int width = canvas.getWidth();
                int height = canvas.getHeight();
                Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ALPHA_8);
                Canvas canvas2 = new Canvas(createBitmap);
                Path path = new Path();
                path.addRoundRect(new RectF(0.0f, 0.0f, (float) width, (float) height), new float[]{this.zNX.zNZ, this.zNX.zNZ, this.zNX.zOa, this.zNX.zOa, this.zNX.zOc, this.zNX.zOc, this.zNX.zOb, this.zNX.zOb}, Direction.CCW);
                path.setFillType(FillType.WINDING);
                canvas2.drawPath(path, new Paint(1));
                this.zNY = createBitmap;
            }
            canvas.drawBitmap(this.zNY, 0.0f, 0.0f, this.aFY);
        }
        canvas.restoreToCount(saveLayer);
        AppMethodBeat.m2505o(107964);
    }

    public void setRadius(float f) {
        AppMethodBeat.m2504i(107963);
        this.zNX.zNZ = f;
        this.zNX.zOa = f;
        this.zNX.zOb = f;
        this.zNX.zOc = f;
        if (this.zNY != null) {
            this.zNY = null;
            postInvalidate();
        }
        AppMethodBeat.m2505o(107963);
    }
}
