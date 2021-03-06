package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api.SimpleClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.tencent.matrix.trace.core.AppMethodBeat;

public class SimpleClientAdapter<T extends IInterface> extends GmsClient<T> {
    private final SimpleClient<T> zzva;

    public SimpleClientAdapter(Context context, Looper looper, int i, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, ClientSettings clientSettings, SimpleClient<T> simpleClient) {
        super(context, looper, i, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzva = simpleClient;
    }

    /* Access modifiers changed, original: protected */
    public T createServiceInterface(IBinder iBinder) {
        AppMethodBeat.m2504i(61388);
        IInterface createServiceInterface = this.zzva.createServiceInterface(iBinder);
        AppMethodBeat.m2505o(61388);
        return createServiceInterface;
    }

    public SimpleClient<T> getClient() {
        return this.zzva;
    }

    public int getMinApkVersion() {
        AppMethodBeat.m2504i(61390);
        int minApkVersion = super.getMinApkVersion();
        AppMethodBeat.m2505o(61390);
        return minApkVersion;
    }

    /* Access modifiers changed, original: protected */
    public String getServiceDescriptor() {
        AppMethodBeat.m2504i(61387);
        String serviceDescriptor = this.zzva.getServiceDescriptor();
        AppMethodBeat.m2505o(61387);
        return serviceDescriptor;
    }

    /* Access modifiers changed, original: protected */
    public String getStartServiceAction() {
        AppMethodBeat.m2504i(61386);
        String startServiceAction = this.zzva.getStartServiceAction();
        AppMethodBeat.m2505o(61386);
        return startServiceAction;
    }

    /* Access modifiers changed, original: protected */
    public void onSetConnectState(int i, T t) {
        AppMethodBeat.m2504i(61389);
        this.zzva.setState(i, t);
        AppMethodBeat.m2505o(61389);
    }
}
