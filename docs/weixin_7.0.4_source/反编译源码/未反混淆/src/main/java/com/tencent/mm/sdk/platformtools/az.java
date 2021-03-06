package com.tencent.mm.sdk.platformtools;

import android.os.Looper;
import android.os.Message;
import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.ttpic.thread.FaceGestureDetGLThread;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class az {
    boolean cHY;
    Object lock;
    String name;
    int priority;
    public LinkedBlockingQueue<a> xAV;
    private int xAW;
    Vector<b> xAX;
    ak xAY;

    public interface a {
        boolean acf();

        boolean acg();
    }

    final class b extends Thread {
        private int urt;

        /* synthetic */ b(az azVar, byte b) {
            this();
        }

        private b() {
            super(az.this.name);
            AppMethodBeat.i(52233);
            this.urt = 60;
            setPriority(az.this.priority);
            az.this.xAX.add(this);
            AppMethodBeat.o(52233);
        }

        public final void run() {
            AppMethodBeat.i(52234);
            while (this.urt > 0) {
                a aVar;
                synchronized (az.this.lock) {
                    try {
                        if (az.this.cHY) {
                            az.this.lock.wait();
                        }
                    } catch (Exception e) {
                        ab.printErrStackTrace("QueueWorkerThread.QueueWorkerThread", e, "", new Object[0]);
                    } catch (Throwable th) {
                        AppMethodBeat.o(52234);
                    }
                }
                try {
                    aVar = (a) az.this.xAV.poll(FaceGestureDetGLThread.BRIGHTNESS_DURATION, TimeUnit.MILLISECONDS);
                } catch (Exception e2) {
                    ab.printErrStackTrace("QueueWorkerThread.QueueWorkerThread", e2, "", new Object[0]);
                    aVar = null;
                }
                if (aVar == null) {
                    this.urt--;
                } else {
                    this.urt = 60;
                    if (aVar.acf()) {
                        az.this.xAY.sendMessage(az.this.xAY.obtainMessage(0, aVar));
                    }
                }
            }
            az.this.xAX.remove(this);
            ab.d("QueueWorkerThread.QueueWorkerThread", "dktest Finish queueToReqSize:" + az.this.xAV.size() + " ThreadSize:" + az.this.xAX.size());
            AppMethodBeat.o(52234);
        }
    }

    public az(int i, String str) {
        this(i, str, 1);
    }

    public az(int i, String str, int i2) {
        this(i, str, i2, Looper.myLooper());
        AppMethodBeat.i(52235);
        AppMethodBeat.o(52235);
    }

    public az(int i, String str, int i2, Looper looper) {
        AppMethodBeat.i(52236);
        this.xAV = new LinkedBlockingQueue();
        this.cHY = false;
        this.xAW = 1;
        this.priority = 1;
        this.name = "";
        this.lock = new byte[0];
        this.xAX = new Vector();
        this.xAW = i2;
        this.name = str;
        this.priority = i;
        if (looper == null && Looper.getMainLooper() != null) {
            looper = Looper.getMainLooper();
            ab.i("QueueWorkerThread.QueueWorkerThread", "looper is null use MainLooper!");
        }
        this.xAY = new ak(looper) {
            public final void handleMessage(Message message) {
                AppMethodBeat.i(52232);
                if (!(message == null || message.obj == null)) {
                    ((a) message.obj).acg();
                }
                AppMethodBeat.o(52232);
            }
        };
        AppMethodBeat.o(52236);
    }

    public final int e(a aVar) {
        AppMethodBeat.i(52237);
        if (aVar == null) {
            ab.e("QueueWorkerThread.QueueWorkerThread", "add empty thread object");
            AppMethodBeat.o(52237);
            return -1;
        }
        try {
            if (this.xAV.offer(aVar, 1, TimeUnit.MILLISECONDS)) {
                if (this.xAX.size() == 0 || (this.xAV.size() > 0 && this.xAW > this.xAX.size())) {
                    new b(this, (byte) 0).start();
                }
                AppMethodBeat.o(52237);
                return 0;
            }
            ab.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed");
            AppMethodBeat.o(52237);
            return -2;
        } catch (Exception e) {
            ab.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed :" + e.getMessage());
            ab.printErrStackTrace("QueueWorkerThread.QueueWorkerThread", e, "", new Object[0]);
            AppMethodBeat.o(52237);
            return -3;
        }
    }

    @Deprecated
    public final boolean dpg() {
        AppMethodBeat.i(52238);
        if (this.xAX == null || this.xAX.size() == 0) {
            AppMethodBeat.o(52238);
            return true;
        }
        AppMethodBeat.o(52238);
        return false;
    }

    /* JADX WARNING: Missing block: B:27:?, code skipped:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void pk(boolean z) {
        int i;
        int i2 = 52239;
        AppMethodBeat.i(52239);
        synchronized (this.lock) {
            try {
                this.cHY = z;
                if (!z) {
                    i = this.lock;
                    synchronized (i) {
                        this.lock.notifyAll();
                    }
                }
            } catch (Throwable th) {
                while (true) {
                }
                i = 52239;
            } finally {
                AppMethodBeat.o(
/*
Method generation error in method: com.tencent.mm.sdk.platformtools.az.pk(boolean):void, dex: classes3.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0026: INVOKE  (wrap: int
  ?: MERGE  (r3_1 int) = (r3_0 'i2' int), (r2_4 'i' int)) com.tencent.matrix.trace.core.AppMethodBeat.o(int):void type: STATIC in method: com.tencent.mm.sdk.platformtools.az.pk(boolean):void, dex: classes3.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:228)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:205)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:102)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:52)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:95)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:300)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:95)
	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:230)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:67)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:183)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:321)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:259)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:221)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:10)
	at jadx.core.ProcessClass.process(ProcessClass.java:38)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: ?: MERGE  (r3_1 int) = (r3_0 'i2' int), (r2_4 'i' int) in method: com.tencent.mm.sdk.platformtools.az.pk(boolean):void, dex: classes3.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:228)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:101)
	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:688)
	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:658)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:340)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:222)
	... 27 more
Caused by: jadx.core.utils.exceptions.CodegenException: MERGE can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:539)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:511)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
	... 32 more

*/
}
