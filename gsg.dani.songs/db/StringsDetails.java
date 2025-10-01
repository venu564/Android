package gsg.dani.songs.db;

import gsg.dani.songs.BuildConfig;
import java.io.Serializable;
import kotlin.Metadata;

/* compiled from: StringsDetails.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lgsg/dani/songs/db/StringsDetails;", "Ljava/io/Serializable;", "()V", "id", BuildConfig.FLAVOR, "getId", "()I", "setId", "(I)V", "songName", BuildConfig.FLAVOR, "getSongName", "()Ljava/lang/String;", "setSongName", "(Ljava/lang/String;)V", "app_debug"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes.dex */
public final class StringsDetails implements Serializable {
    private int id;
    private String songName;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final String getSongName() {
        return this.songName;
    }

    public final void setSongName(String str) {
        this.songName = str;
    }
}