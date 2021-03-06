package com.tencent.mm.g.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.c;

public abstract class b extends c {
    public static final String[] diI = new String[0];
    private static final int diO = "insertmsg".hashCode();
    private static final int diR = "rowid".hashCode();
    private static final int diV = "billNo".hashCode();
    private static final int diW = "localMsgId".hashCode();
    private static final int diX = "status".hashCode();
    private boolean diK = true;
    private boolean diS = true;
    private boolean diT = true;
    private boolean diU = true;
    public String field_billNo;
    public boolean field_insertmsg;
    public long field_localMsgId;
    public int field_status;

    public final void d(Cursor cursor) {
        String[] columnNames = cursor.getColumnNames();
        if (columnNames != null) {
            int length = columnNames.length;
            for (int i = 0; i < length; i++) {
                int hashCode = columnNames[i].hashCode();
                if (diV == hashCode) {
                    this.field_billNo = cursor.getString(i);
                    this.diS = true;
                } else if (diO == hashCode) {
                    this.field_insertmsg = cursor.getInt(i) != 0;
                } else if (diW == hashCode) {
                    this.field_localMsgId = cursor.getLong(i);
                } else if (diX == hashCode) {
                    this.field_status = cursor.getInt(i);
                } else if (diR == hashCode) {
                    this.xDa = cursor.getLong(i);
                }
            }
        }
    }

    public final ContentValues Hl() {
        ContentValues contentValues = new ContentValues();
        if (this.diS) {
            contentValues.put("billNo", this.field_billNo);
        }
        if (this.diK) {
            contentValues.put("insertmsg", Boolean.valueOf(this.field_insertmsg));
        }
        if (this.diT) {
            contentValues.put("localMsgId", Long.valueOf(this.field_localMsgId));
        }
        if (this.diU) {
            contentValues.put("status", Integer.valueOf(this.field_status));
        }
        if (this.xDa > 0) {
            contentValues.put("rowid", Long.valueOf(this.xDa));
        }
        return contentValues;
    }
}
