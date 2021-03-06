package com.tencent.mm.plugin.voip_cs.ui.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView.SurfaceTextureListener;
import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.mm.sdk.platformtools.ab;
import com.tencent.mm.ui.base.MMTextureView;
import com.tencent.smtt.sdk.WebView;

public class VoipCSVideoView extends MMTextureView implements SurfaceTextureListener {
    private static final int[] oJj = new int[]{452984831, 369098751, 268435455, 369098751, 268435455, 184549375, 268435455, 184549375, 100663295};
    private SurfaceTexture bsb;
    private int fcn;
    private int fco;
    private int index;
    private Paint oJk;
    private int position;
    private a teK = a.None;
    private String username;

    public enum a {
        Avatar,
        Video,
        None;

        static {
            AppMethodBeat.o(135428);
        }
    }

    public VoipCSVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AppMethodBeat.i(135429);
        initView();
        AppMethodBeat.o(135429);
    }

    public VoipCSVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AppMethodBeat.i(135430);
        initView();
        AppMethodBeat.o(135430);
    }

    private void initView() {
        AppMethodBeat.i(135431);
        this.oJk = new Paint();
        this.oJk.setColor(WebView.NIGHT_MODE_COLOR);
        this.oJk.setFilterBitmap(true);
        this.oJk.setTextSize(40.0f);
        setSurfaceTextureListener(this);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), getWidth(), getHeight());
        }
        AppMethodBeat.o(135431);
    }

    public String getUsername() {
        return this.username;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public int getPosition() {
        return this.position;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        boolean z = false;
        AppMethodBeat.i(135432);
        String str = "MicroMsg.cs.VoipCSVideoView";
        String str2 = "onSurfaceTextureAvailable %s %b %d %d";
        Object[] objArr = new Object[4];
        objArr[0] = this.username;
        if (surfaceTexture != null) {
            z = true;
        }
        objArr[1] = Boolean.valueOf(z);
        objArr[2] = Integer.valueOf(i);
        objArr[3] = Integer.valueOf(i2);
        ab.i(str, str2, objArr);
        AppMethodBeat.o(135432);
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        boolean z = false;
        AppMethodBeat.i(135433);
        String str = "MicroMsg.cs.VoipCSVideoView";
        String str2 = "onSurfaceTextureSizeChanged %s %b %d %d";
        Object[] objArr = new Object[4];
        objArr[0] = this.username;
        if (surfaceTexture != null) {
            z = true;
        }
        objArr[1] = Boolean.valueOf(z);
        objArr[2] = Integer.valueOf(i);
        objArr[3] = Integer.valueOf(i2);
        ab.i(str, str2, objArr);
        AppMethodBeat.o(135433);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        boolean z;
        AppMethodBeat.i(135434);
        String str = "MicroMsg.cs.VoipCSVideoView";
        String str2 = "onSurfaceTextureDestroyed %s %b";
        Object[] objArr = new Object[2];
        objArr[0] = this.username;
        if (surfaceTexture != null) {
            z = true;
        } else {
            z = false;
        }
        objArr[1] = Boolean.valueOf(z);
        ab.i(str, str2, objArr);
        this.bsb = null;
        this.fco = 0;
        this.fcn = 0;
        AppMethodBeat.o(135434);
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        boolean z = false;
        AppMethodBeat.i(135435);
        String str = "MicroMsg.cs.VoipCSVideoView";
        String str2 = "onSurfaceTextureUpdated %s %b";
        Object[] objArr = new Object[2];
        objArr[0] = this.username;
        if (surfaceTexture != null) {
            z = true;
        }
        objArr[1] = Boolean.valueOf(z);
        ab.v(str, str2, objArr);
        AppMethodBeat.o(135435);
    }
}
