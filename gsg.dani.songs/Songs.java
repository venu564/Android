package gsg.dani.songs;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import gsg.dani.songs.db.DBinRAW;
import gsg.dani.songs.db.StringsDetails;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Songs.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 H2\u00020\u0001:\u0001HB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010=\u001a\u00020>H\u0002J\b\u0010?\u001a\u00020>H\u0002J\u0012\u0010@\u001a\u00020>2\b\u0010A\u001a\u0004\u0018\u00010BH\u0014J\u0018\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u00020GH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R \u0010*\u001a\b\u0018\u00010+R\u00020,X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u00101\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010$\"\u0004\b3\u0010&R\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\b¨\u0006I"}, d2 = {"Lgsg/dani/songs/Songs;", "Landroid/app/Activity;", "()V", "Back", "Landroid/widget/ImageView;", "getBack", "()Landroid/widget/ImageView;", "setBack", "(Landroid/widget/ImageView;)V", "DisplaySong", BuildConfig.FLAVOR, "getDisplaySong", "()Ljava/lang/String;", "setDisplaySong", "(Ljava/lang/String;)V", "Next", "getNext", "setNext", "TOTALNUMBERS", BuildConfig.FLAVOR, "getTOTALNUMBERS", "()I", "setTOTALNUMBERS", "(I)V", "Title", "getTitle", "setTitle", "dispaly", "Landroid/graphics/Typeface;", "getDispaly", "()Landroid/graphics/Typeface;", "setDispaly", "(Landroid/graphics/Typeface;)V", "header", "Landroid/widget/TextView;", "getHeader", "()Landroid/widget/TextView;", "setHeader", "(Landroid/widget/TextView;)V", "index", "getIndex", "setIndex", "mWakeLock", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", "getMWakeLock", "()Landroid/os/PowerManager$WakeLock;", "setMWakeLock", "(Landroid/os/PowerManager$WakeLock;)V", "readsong", "getReadsong", "setReadsong", "searchBYnumber", "Landroid/widget/EditText;", "getSearchBYnumber", "()Landroid/widget/EditText;", "setSearchBYnumber", "(Landroid/widget/EditText;)V", "submit", "getSubmit", "setSubmit", "dbQuery", BuildConfig.FLAVOR, "indexActivity", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", BuildConfig.FLAVOR, "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "Companion", "app_debug"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes.dex */
public final class Songs extends Activity {
    private static String BOOKNAME;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static int SONGNUMBER;
    private ImageView Back;
    private String DisplaySong;
    private ImageView Next;
    private int TOTALNUMBERS;
    private String Title;
    private HashMap _$_findViewCache;
    private Typeface dispaly;
    private TextView header;
    private TextView index;
    private PowerManager.WakeLock mWakeLock;
    private TextView readsong;
    private EditText searchBYnumber;
    private ImageView submit;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final int getTOTALNUMBERS() {
        return this.TOTALNUMBERS;
    }

    public final void setTOTALNUMBERS(int i) {
        this.TOTALNUMBERS = i;
    }

    public final EditText getSearchBYnumber() {
        return this.searchBYnumber;
    }

    public final void setSearchBYnumber(EditText editText) {
        this.searchBYnumber = editText;
    }

    public final TextView getHeader() {
        return this.header;
    }

    public final void setHeader(TextView textView) {
        this.header = textView;
    }

    public final TextView getReadsong() {
        return this.readsong;
    }

    public final void setReadsong(TextView textView) {
        this.readsong = textView;
    }

    public final TextView getIndex() {
        return this.index;
    }

    public final void setIndex(TextView textView) {
        this.index = textView;
    }

    public final Typeface getDispaly() {
        return this.dispaly;
    }

    public final void setDispaly(Typeface typeface) {
        this.dispaly = typeface;
    }

    public final String getDisplaySong() {
        return this.DisplaySong;
    }

    public final void setDisplaySong(String str) {
        this.DisplaySong = str;
    }

    @Override // android.app.Activity
    public final String getTitle() {
        return this.Title;
    }

    public final void setTitle(String str) {
        this.Title = str;
    }

    public final ImageView getNext() {
        return this.Next;
    }

    public final void setNext(ImageView imageView) {
        this.Next = imageView;
    }

    public final ImageView getBack() {
        return this.Back;
    }

    public final void setBack(ImageView imageView) {
        this.Back = imageView;
    }

    public final ImageView getSubmit() {
        return this.submit;
    }

    public final void setSubmit(ImageView imageView) {
        this.submit = imageView;
    }

    protected final PowerManager.WakeLock getMWakeLock() {
        return this.mWakeLock;
    }

    protected final void setMWakeLock(PowerManager.WakeLock wakeLock) {
        this.mWakeLock = wakeLock;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.songs_layout);
        getWindow().addFlags(128);
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            Intrinsics.throwNpe();
        }
        this.TOTALNUMBERS = extras.getInt("TOTALNUMBERS");
        BOOKNAME = extras.getString("BOOKNAME");
        SONGNUMBER = extras.getInt("SONGNUMBER");
        this.Title = extras.getString("Title");
        dbQuery();
        View viewFindViewById = findViewById(R.id.searchbynumber);
        if (viewFindViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.searchBYnumber = (EditText) viewFindViewById;
        EditText editText = this.searchBYnumber;
        if (editText == null) {
            Intrinsics.throwNpe();
        }
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: gsg.dani.songs.Songs.onCreate.1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView v, int actionId, KeyEvent event) throws NumberFormatException {
                if (actionId == 6) {
                    EditText searchBYnumber = Songs.this.getSearchBYnumber();
                    if (searchBYnumber == null) {
                        Intrinsics.throwNpe();
                    }
                    CharSequence $this$trim$iv$iv = searchBYnumber.getText().toString();
                    int startIndex$iv$iv = 0;
                    int endIndex$iv$iv = $this$trim$iv$iv.length() - 1;
                    boolean startFound$iv$iv = false;
                    while (startIndex$iv$iv <= endIndex$iv$iv) {
                        int index$iv$iv = !startFound$iv$iv ? startIndex$iv$iv : endIndex$iv$iv;
                        char it = $this$trim$iv$iv.charAt(index$iv$iv) <= ' ' ? (char) 1 : (char) 0;
                        if (!startFound$iv$iv) {
                            if (it == 0) {
                                startFound$iv$iv = true;
                            } else {
                                startIndex$iv$iv++;
                            }
                        } else {
                            if (it == 0) {
                                break;
                            }
                            endIndex$iv$iv--;
                        }
                    }
                    String $this$trim$iv = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
                    if (Intrinsics.areEqual($this$trim$iv, BuildConfig.FLAVOR)) {
                        Toast.makeText(Songs.this.getApplicationContext(), " Please Enter " + Songs.this.getTOTALNUMBERS() + " below Number", 1).show();
                    } else {
                        Integer number = Integer.valueOf($this$trim$iv);
                        if (Intrinsics.compare(number.intValue(), Songs.this.getTOTALNUMBERS()) <= 0) {
                            Companion companion = Songs.INSTANCE;
                            Intrinsics.checkExpressionValueIsNotNull(number, "number");
                            companion.setSONGNUMBER(number.intValue());
                            Songs.this.dbQuery();
                            EditText searchBYnumber2 = Songs.this.getSearchBYnumber();
                            if (searchBYnumber2 == null) {
                                Intrinsics.throwNpe();
                            }
                            searchBYnumber2.getText().clear();
                        } else {
                            Toast.makeText(Songs.this.getApplicationContext(), Songs.this.getTOTALNUMBERS() + " Last Song ", 1).show();
                        }
                    }
                }
                return false;
            }
        });
        View viewFindViewById2 = findViewById(R.id.submit);
        if (viewFindViewById2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.submit = (ImageView) viewFindViewById2;
        ImageView imageView = this.submit;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: gsg.dani.songs.Songs.onCreate.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) throws NumberFormatException {
                EditText searchBYnumber = Songs.this.getSearchBYnumber();
                if (searchBYnumber == null) {
                    Intrinsics.throwNpe();
                }
                CharSequence $this$trim$iv$iv = searchBYnumber.getText().toString();
                int startIndex$iv$iv = 0;
                int endIndex$iv$iv = $this$trim$iv$iv.length() - 1;
                boolean startFound$iv$iv = false;
                while (startIndex$iv$iv <= endIndex$iv$iv) {
                    int index$iv$iv = !startFound$iv$iv ? startIndex$iv$iv : endIndex$iv$iv;
                    char it2 = $this$trim$iv$iv.charAt(index$iv$iv);
                    char it3 = it2 <= ' ' ? (char) 1 : (char) 0;
                    if (!startFound$iv$iv) {
                        if (it3 == 0) {
                            startFound$iv$iv = true;
                        } else {
                            startIndex$iv$iv++;
                        }
                    } else if (it3 == 0) {
                        break;
                    } else {
                        endIndex$iv$iv--;
                    }
                }
                String $this$trim$iv = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
                if (Intrinsics.areEqual($this$trim$iv, BuildConfig.FLAVOR)) {
                    Toast.makeText(Songs.this.getApplicationContext(), " Please Enter " + Songs.this.getTOTALNUMBERS() + " below Number", 1).show();
                    return;
                }
                Integer number = Integer.valueOf($this$trim$iv);
                if (Intrinsics.compare(number.intValue(), Songs.this.getTOTALNUMBERS()) <= 0) {
                    Companion companion = Songs.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(number, "number");
                    companion.setSONGNUMBER(number.intValue());
                    Songs.this.dbQuery();
                    EditText searchBYnumber2 = Songs.this.getSearchBYnumber();
                    if (searchBYnumber2 == null) {
                        Intrinsics.throwNpe();
                    }
                    searchBYnumber2.getText().clear();
                    View view = Songs.this.getCurrentFocus();
                    if (view != null) {
                        Object systemService = Songs.this.getSystemService("input_method");
                        if (systemService == null) {
                            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                        }
                        InputMethodManager imm = (InputMethodManager) systemService;
                        imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
                        return;
                    }
                    return;
                }
                Toast.makeText(Songs.this.getApplicationContext(), Songs.this.getTOTALNUMBERS() + " Last Song ", 1).show();
            }
        });
        View viewFindViewById3 = findViewById(R.id.next);
        if (viewFindViewById3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.Next = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.back);
        if (viewFindViewById4 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.Back = (ImageView) viewFindViewById4;
        ImageView imageView2 = this.Next;
        if (imageView2 == null) {
            Intrinsics.throwNpe();
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: gsg.dani.songs.Songs.onCreate.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                if (Songs.INSTANCE.getSONGNUMBER() + 1 <= Songs.this.getTOTALNUMBERS()) {
                    Companion companion = Songs.INSTANCE;
                    companion.setSONGNUMBER(companion.getSONGNUMBER() + 1);
                    Songs.this.dbQuery();
                } else {
                    Toast.makeText(Songs.this.getApplicationContext(), Songs.this.getTOTALNUMBERS() + " Last Song ", 1).show();
                }
            }
        });
        ImageView imageView3 = this.Back;
        if (imageView3 == null) {
            Intrinsics.throwNpe();
        }
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: gsg.dani.songs.Songs.onCreate.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                if (2 <= Songs.INSTANCE.getSONGNUMBER()) {
                    Songs.INSTANCE.setSONGNUMBER(r0.getSONGNUMBER() - 1);
                    Songs.this.dbQuery();
                    return;
                }
                Toast.makeText(Songs.this.getApplicationContext(), "Your in First Song ", 1).show();
            }
        });
        View viewFindViewById5 = findViewById(R.id.index);
        if (viewFindViewById5 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.index = (TextView) viewFindViewById5;
        TextView textView = this.index;
        if (textView == null) {
            Intrinsics.throwNpe();
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: gsg.dani.songs.Songs.onCreate.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                Songs.this.indexActivity();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void indexActivity() {
        Index.INSTANCE.setScrollPostion(String.valueOf(SONGNUMBER - 1));
        Intent intent = new Intent(getApplicationContext(), (Class<?>) Index.class);
        intent.putExtra("BOOKNAME", BOOKNAME);
        intent.putExtra("TOTALNUMBERS", this.TOTALNUMBERS);
        intent.putExtra("Title", this.Title);
        startActivity(intent);
        overridePendingTransition(R.animator.zoom_exit, R.animator.zoom_exit);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dbQuery() {
        try {
            DBinRAW db = new DBinRAW(this);
            List contacts = db.getSongs();
            for (StringsDetails cn : contacts) {
                String songName = cn.getSongName();
                if (songName == null) {
                    Intrinsics.throwNpe();
                }
                if (songName == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                }
                this.DisplaySong = StringsKt.trim((CharSequence) songName).toString();
            }
            this.dispaly = Typeface.createFromAsset(getAssets(), "telugu_read.ttf");
            View viewFindViewById = findViewById(R.id.read_song);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.readsong = (TextView) viewFindViewById;
            View viewFindViewById2 = findViewById(R.id.header);
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.header = (TextView) viewFindViewById2;
            TextView textView = this.header;
            if (textView == null) {
                Intrinsics.throwNpe();
            }
            textView.setText(this.Title + " (NO : " + SONGNUMBER + ")\n" + this.DisplaySong);
            TextView textView2 = this.header;
            if (textView2 == null) {
                Intrinsics.throwNpe();
            }
            textView2.setTypeface(this.dispaly);
            TextView textView3 = this.readsong;
            if (textView3 == null) {
                Intrinsics.throwNpe();
            }
            textView3.setText(this.DisplaySong);
            TextView textView4 = this.readsong;
            if (textView4 == null) {
                Intrinsics.throwNpe();
            }
            textView4.setTypeface(this.dispaly);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (keyCode == 4) {
            indexActivity();
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    /* compiled from: Songs.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lgsg/dani/songs/Songs$Companion;", BuildConfig.FLAVOR, "()V", "BOOKNAME", BuildConfig.FLAVOR, "getBOOKNAME", "()Ljava/lang/String;", "setBOOKNAME", "(Ljava/lang/String;)V", "SONGNUMBER", BuildConfig.FLAVOR, "getSONGNUMBER", "()I", "setSONGNUMBER", "(I)V", "app_debug"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        public final String getBOOKNAME() {
            return Songs.BOOKNAME;
        }

        public final void setBOOKNAME(String str) {
            Songs.BOOKNAME = str;
        }

        public final int getSONGNUMBER() {
            return Songs.SONGNUMBER;
        }

        public final void setSONGNUMBER(int i) {
            Songs.SONGNUMBER = i;
        }
    }
}