package com.google.android.gms.dynamic;

import com.tencent.matrix.trace.core.AppMethodBeat;

final class zzf implements zza {
    private final /* synthetic */ DeferredLifecycleHelper zzabg;

    zzf(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.zzabg = deferredLifecycleHelper;
    }

    public final int getState() {
        return 4;
    }

    public final void zza(LifecycleDelegate lifecycleDelegate) {
        AppMethodBeat.i(61640);
        this.zzabg.zzabc.onStart();
        AppMethodBeat.o(61640);
    }
}
