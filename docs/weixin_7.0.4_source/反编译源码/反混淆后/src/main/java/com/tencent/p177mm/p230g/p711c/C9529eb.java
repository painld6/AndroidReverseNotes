package com.tencent.p177mm.p230g.p711c;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.p177mm.sdk.p603e.C4925c;

/* renamed from: com.tencent.mm.g.c.eb */
public abstract class C9529eb extends C4925c {
    private static final int dPr = "originMD5".hashCode();
    private static final int dPs = "resultFile".hashCode();
    private static final int dPt = "fromLang".hashCode();
    private static final int dPu = "toLang".hashCode();
    public static final String[] diI = new String[0];
    private static final int diR = "rowid".hashCode();
    private boolean dPn = true;
    private boolean dPo = true;
    private boolean dPp = true;
    private boolean dPq = true;
    public String field_fromLang;
    public String field_originMD5;
    public String field_resultFile;
    public String field_toLang;

    /* renamed from: d */
    public final void mo8995d(Cursor cursor) {
        String[] columnNames = cursor.getColumnNames();
        if (columnNames != null) {
            int length = columnNames.length;
            for (int i = 0; i < length; i++) {
                int hashCode = columnNames[i].hashCode();
                if (dPr == hashCode) {
                    this.field_originMD5 = cursor.getString(i);
                    this.dPn = true;
                } else if (dPs == hashCode) {
                    this.field_resultFile = cursor.getString(i);
                } else if (dPt == hashCode) {
                    this.field_fromLang = cursor.getString(i);
                } else if (dPu == hashCode) {
                    this.field_toLang = cursor.getString(i);
                } else if (diR == hashCode) {
                    this.xDa = cursor.getLong(i);
                }
            }
        }
    }

    /* renamed from: Hl */
    public final ContentValues mo10098Hl() {
        ContentValues contentValues = new ContentValues();
        if (this.dPn) {
            contentValues.put("originMD5", this.field_originMD5);
        }
        if (this.dPo) {
            contentValues.put("resultFile", this.field_resultFile);
        }
        if (this.dPp) {
            contentValues.put("fromLang", this.field_fromLang);
        }
        if (this.dPq) {
            contentValues.put("toLang", this.field_toLang);
        }
        if (this.xDa > 0) {
            contentValues.put("rowid", Long.valueOf(this.xDa));
        }
        return contentValues;
    }
}
