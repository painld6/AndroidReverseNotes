package com.tencent.rtmp.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.matrix.trace.core.AppMethodBeat;

public class TXScreenCapture {

    public static class TXScreenCaptureAssistantActivity extends Activity {
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            AppMethodBeat.m2503at(this, z);
        }

        public void onCreate(Bundle bundle) {
            AppMethodBeat.m2504i(65588);
            super.onCreate(bundle);
            requestWindowFeature(1);
            Start();
            AppMethodBeat.m2505o(65588);
        }

        @TargetApi(21)
        public void Start() {
            AppMethodBeat.m2504i(65589);
            try {
                startActivityForResult((Intent) getIntent().getParcelableExtra("TXScreenCapture.ScreenCaptureIntent"), 1001);
                AppMethodBeat.m2505o(65589);
            } catch (Exception e) {
                Intent intent = new Intent("TXScreenCapture.OnAssistantActivityResult");
                intent.putExtra("TXScreenCapture.RequestCode", 1001);
                intent.putExtra("TXScreenCapture.ResultCode", 20000002);
                sendBroadcast(intent);
                finish();
                AppMethodBeat.m2505o(65589);
            }
        }

        public void onActivityResult(int i, int i2, Intent intent) {
            AppMethodBeat.m2504i(65590);
            Intent intent2 = new Intent("TXScreenCapture.OnAssistantActivityResult");
            intent2.putExtra("TXScreenCapture.RequestCode", i);
            intent2.putExtra("TXScreenCapture.ResultCode", i2);
            intent2.putExtra("TXScreenCapture.ResultData", intent);
            sendBroadcast(intent2);
            finish();
            AppMethodBeat.m2505o(65590);
        }
    }
}
