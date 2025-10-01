package gsg.dani.songs;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.SQLException;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import gsg.dani.songs.db.DBinRAW;
import java.io.IOException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010O\u001a\u00020PH\u0002J\b\u0010Q\u001a\u00020PH\u0002J\b\u0010R\u001a\u00020PH\u0002J\b\u0010S\u001a\u00020PH\u0002J\u0010\u0010T\u001a\u00020P2\u0006\u0010U\u001a\u00020VH\u0016J\u0012\u0010W\u001a\u00020P2\b\u0010X\u001a\u0004\u0018\u00010YH\u0014J\u0018\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020^H\u0016J\b\u0010_\u001a\u00020PH\u0002J\b\u0010`\u001a\u00020PH\u0002J\b\u0010a\u001a\u00020PH\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001bR\u001a\u0010%\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\r\"\u0004\b'\u0010\u000fR\u001a\u0010(\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010\u000fR\u001a\u0010+\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\r\"\u0004\b-\u0010\u000fR\u001c\u0010.\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\tR\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001c\u00107\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00104\"\u0004\b9\u00106R\u001c\u0010:\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00104\"\u0004\b<\u00106R\u001c\u0010=\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00104\"\u0004\b?\u00106R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001c\u0010F\u001a\u0004\u0018\u00010AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010C\"\u0004\bH\u0010ER\u001c\u0010I\u001a\u0004\u0018\u00010AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010C\"\u0004\bK\u0010ER\u001c\u0010L\u001a\u0004\u0018\u00010AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010C\"\u0004\bN\u0010E¨\u0006b"}, d2 = {"Lgsg/dani/songs/MainActivity;", "Landroid/app/Activity;", "Landroid/view/View$OnClickListener;", "()V", "BOOKNAME", BuildConfig.FLAVOR, "getBOOKNAME", "()Ljava/lang/String;", "setBOOKNAME", "(Ljava/lang/String;)V", "ENGLISH_CHROUS_totelnumber", BuildConfig.FLAVOR, "getENGLISH_CHROUS_totelnumber", "()I", "setENGLISH_CHROUS_totelnumber", "(I)V", "ENGLISH_totelnumber", "getENGLISH_totelnumber", "setENGLISH_totelnumber", "ENTER_NAME", "getENTER_NAME", "setENTER_NAME", "Edit_eng_chorus", "Landroid/widget/EditText;", "getEdit_eng_chorus", "()Landroid/widget/EditText;", "setEdit_eng_chorus", "(Landroid/widget/EditText;)V", "Edit_eng_title", "getEdit_eng_title", "setEdit_eng_title", "Edit_tel_chorus", "getEdit_tel_chorus", "setEdit_tel_chorus", "Edit_tel_title", "getEdit_tel_title", "setEdit_tel_title", "SONGNUMBER", "getSONGNUMBER", "setSONGNUMBER", "TELUGU_totelnumber", "getTELUGU_totelnumber", "setTELUGU_totelnumber", "TOTALNUMBERS", "getTOTALNUMBERS", "setTOTALNUMBERS", "Title", "getTitle", "setTitle", "btn_eng_chorus", "Landroid/widget/ImageView;", "getBtn_eng_chorus", "()Landroid/widget/ImageView;", "setBtn_eng_chorus", "(Landroid/widget/ImageView;)V", "btn_eng_title", "getBtn_eng_title", "setBtn_eng_title", "btn_tel_chorus", "getBtn_tel_chorus", "setBtn_tel_chorus", "btn_tel_title", "getBtn_tel_title", "setBtn_tel_title", "eng_chorus", "Landroid/widget/TextView;", "getEng_chorus", "()Landroid/widget/TextView;", "setEng_chorus", "(Landroid/widget/TextView;)V", "eng_title", "getEng_title", "setEng_title", "tel_chorus", "getTel_chorus", "setTel_chorus", "tel_title", "getTel_title", "setTel_title", "chorusSongs", BuildConfig.FLAVOR, "databaseCalling", "decleration", "englishSongs", "onClick", "v", "Landroid/view/View;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", BuildConfig.FLAVOR, "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "sending", "sendingSong", "teluguSongs", "app_debug"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes.dex */
public final class MainActivity extends Activity implements View.OnClickListener {
    private String BOOKNAME;
    private String ENTER_NAME;
    private EditText Edit_eng_chorus;
    private EditText Edit_eng_title;
    private EditText Edit_tel_chorus;
    private EditText Edit_tel_title;
    private int SONGNUMBER;
    private int TOTALNUMBERS;
    private String Title;
    private HashMap _$_findViewCache;
    private ImageView btn_eng_chorus;
    private ImageView btn_eng_title;
    private ImageView btn_tel_chorus;
    private ImageView btn_tel_title;
    private TextView eng_chorus;
    private TextView eng_title;
    private TextView tel_chorus;
    private TextView tel_title;
    private int TELUGU_totelnumber = 329;
    private int ENGLISH_totelnumber = 291;
    private int ENGLISH_CHROUS_totelnumber = 354;

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

    public final TextView getTel_title() {
        return this.tel_title;
    }

    public final void setTel_title(TextView textView) {
        this.tel_title = textView;
    }

    public final TextView getTel_chorus() {
        return this.tel_chorus;
    }

    public final void setTel_chorus(TextView textView) {
        this.tel_chorus = textView;
    }

    public final TextView getEng_title() {
        return this.eng_title;
    }

    public final void setEng_title(TextView textView) {
        this.eng_title = textView;
    }

    public final TextView getEng_chorus() {
        return this.eng_chorus;
    }

    public final void setEng_chorus(TextView textView) {
        this.eng_chorus = textView;
    }

    public final EditText getEdit_tel_title() {
        return this.Edit_tel_title;
    }

    public final void setEdit_tel_title(EditText editText) {
        this.Edit_tel_title = editText;
    }

    public final EditText getEdit_tel_chorus() {
        return this.Edit_tel_chorus;
    }

    public final void setEdit_tel_chorus(EditText editText) {
        this.Edit_tel_chorus = editText;
    }

    public final EditText getEdit_eng_title() {
        return this.Edit_eng_title;
    }

    public final void setEdit_eng_title(EditText editText) {
        this.Edit_eng_title = editText;
    }

    public final EditText getEdit_eng_chorus() {
        return this.Edit_eng_chorus;
    }

    public final void setEdit_eng_chorus(EditText editText) {
        this.Edit_eng_chorus = editText;
    }

    public final ImageView getBtn_tel_title() {
        return this.btn_tel_title;
    }

    public final void setBtn_tel_title(ImageView imageView) {
        this.btn_tel_title = imageView;
    }

    public final ImageView getBtn_tel_chorus() {
        return this.btn_tel_chorus;
    }

    public final void setBtn_tel_chorus(ImageView imageView) {
        this.btn_tel_chorus = imageView;
    }

    public final ImageView getBtn_eng_title() {
        return this.btn_eng_title;
    }

    public final void setBtn_eng_title(ImageView imageView) {
        this.btn_eng_title = imageView;
    }

    public final ImageView getBtn_eng_chorus() {
        return this.btn_eng_chorus;
    }

    public final void setBtn_eng_chorus(ImageView imageView) {
        this.btn_eng_chorus = imageView;
    }

    public final String getENTER_NAME() {
        return this.ENTER_NAME;
    }

    public final void setENTER_NAME(String str) {
        this.ENTER_NAME = str;
    }

    public final String getBOOKNAME() {
        return this.BOOKNAME;
    }

    public final void setBOOKNAME(String str) {
        this.BOOKNAME = str;
    }

    @Override // android.app.Activity
    public final String getTitle() {
        return this.Title;
    }

    public final void setTitle(String str) {
        this.Title = str;
    }

    public final int getTOTALNUMBERS() {
        return this.TOTALNUMBERS;
    }

    public final void setTOTALNUMBERS(int i) {
        this.TOTALNUMBERS = i;
    }

    public final int getSONGNUMBER() {
        return this.SONGNUMBER;
    }

    public final void setSONGNUMBER(int i) {
        this.SONGNUMBER = i;
    }

    public final int getTELUGU_totelnumber() {
        return this.TELUGU_totelnumber;
    }

    public final void setTELUGU_totelnumber(int i) {
        this.TELUGU_totelnumber = i;
    }

    public final int getENGLISH_totelnumber() {
        return this.ENGLISH_totelnumber;
    }

    public final void setENGLISH_totelnumber(int i) {
        this.ENGLISH_totelnumber = i;
    }

    public final int getENGLISH_CHROUS_totelnumber() {
        return this.ENGLISH_CHROUS_totelnumber;
    }

    public final void setENGLISH_CHROUS_totelnumber(int i) {
        this.ENGLISH_CHROUS_totelnumber = i;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        decleration();
        databaseCalling();
    }

    private final void decleration() {
        View viewFindViewById = findViewById(R.id.Tel_songs);
        if (viewFindViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.tel_title = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.eng_songs);
        if (viewFindViewById2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.eng_title = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.eng_chorus);
        if (viewFindViewById3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.eng_chorus = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.enter_telugu);
        if (viewFindViewById4 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.Edit_tel_title = (EditText) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.enter_eng);
        if (viewFindViewById5 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.Edit_eng_title = (EditText) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.enter_eng_chorus);
        if (viewFindViewById6 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.Edit_eng_chorus = (EditText) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.btn_telugu);
        if (viewFindViewById7 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.btn_tel_title = (ImageView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.btn_eng);
        if (viewFindViewById8 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.btn_eng_title = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.btn_eng_chorus);
        if (viewFindViewById9 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.btn_eng_chorus = (ImageView) viewFindViewById9;
        Typeface hed = Typeface.createFromAsset(getAssets(), "telugu_title.ttf");
        View viewFindViewById10 = findViewById(R.id.header);
        if (viewFindViewById10 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView header = (TextView) viewFindViewById10;
        header.setTypeface(hed);
        Typeface foot = Typeface.createFromAsset(getAssets(), "eng_title.TTF");
        View viewFindViewById11 = findViewById(R.id.footer);
        if (viewFindViewById11 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView footer = (TextView) viewFindViewById11;
        footer.setTypeface(foot);
        TextView textView = this.tel_title;
        if (textView == null) {
            Intrinsics.throwNpe();
        }
        textView.setTypeface(hed);
        TextView textView2 = this.eng_title;
        if (textView2 == null) {
            Intrinsics.throwNpe();
        }
        textView2.setTypeface(foot);
        TextView textView3 = this.eng_chorus;
        if (textView3 == null) {
            Intrinsics.throwNpe();
        }
        textView3.setTypeface(foot);
        TextView textView4 = this.tel_title;
        if (textView4 == null) {
            Intrinsics.throwNpe();
        }
        textView4.setOnClickListener(this);
        TextView textView5 = this.eng_title;
        if (textView5 == null) {
            Intrinsics.throwNpe();
        }
        textView5.setOnClickListener(this);
        TextView textView6 = this.eng_chorus;
        if (textView6 == null) {
            Intrinsics.throwNpe();
        }
        textView6.setOnClickListener(this);
        EditText editText = this.Edit_tel_title;
        if (editText == null) {
            Intrinsics.throwNpe();
        }
        editText.setOnClickListener(this);
        EditText editText2 = this.Edit_eng_title;
        if (editText2 == null) {
            Intrinsics.throwNpe();
        }
        editText2.setOnClickListener(this);
        EditText editText3 = this.Edit_eng_chorus;
        if (editText3 == null) {
            Intrinsics.throwNpe();
        }
        editText3.setOnClickListener(this);
        ImageView imageView = this.btn_tel_title;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        imageView.setOnClickListener(this);
        ImageView imageView2 = this.btn_eng_title;
        if (imageView2 == null) {
            Intrinsics.throwNpe();
        }
        imageView2.setOnClickListener(this);
        ImageView imageView3 = this.btn_eng_chorus;
        if (imageView3 == null) {
            Intrinsics.throwNpe();
        }
        imageView3.setOnClickListener(this);
    }

    private final void databaseCalling() {
        DBinRAW myDbHelper = new DBinRAW(this);
        try {
            myDbHelper.createDataBase(this);
            myDbHelper.close();
            try {
                myDbHelper.openDataBase();
                myDbHelper.close();
            } catch (SQLException sqle) {
                throw sqle;
            }
        } catch (IOException e) {
            throw new Error("_______Unable to create database");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) throws NumberFormatException {
        Intrinsics.checkParameterIsNotNull(v, "v");
        int id = v.getId();
        if (id == R.id.Tel_songs) {
            this.BOOKNAME = "Tel_Song_Name";
            this.TOTALNUMBERS = this.TELUGU_totelnumber;
            this.Title = "ఉజ్జీవ కీర్తనలు";
            sending();
        }
        switch (id) {
            case R.id.btn_eng /* 2131230793 */:
                this.BOOKNAME = "Eng_Song_Name";
                this.TOTALNUMBERS = this.ENGLISH_totelnumber;
                this.Title = "HYMNS";
                englishSongs();
                break;
            case R.id.btn_eng_chorus /* 2131230794 */:
                this.BOOKNAME = "Eng_Chrous_Name";
                this.TOTALNUMBERS = this.ENGLISH_CHROUS_totelnumber;
                this.Title = "CHORUSES";
                chorusSongs();
                break;
            case R.id.btn_telugu /* 2131230795 */:
                this.BOOKNAME = "Tel_Song_Name";
                this.TOTALNUMBERS = this.TELUGU_totelnumber;
                this.Title = "ఉజ్జీవ కీర్తనలు";
                teluguSongs();
                break;
            default:
                switch (id) {
                    case R.id.eng_chorus /* 2131230818 */:
                        this.BOOKNAME = "Eng_Chrous_Name";
                        this.TOTALNUMBERS = this.ENGLISH_CHROUS_totelnumber;
                        this.Title = "CHORUSES";
                        sending();
                        break;
                    case R.id.eng_songs /* 2131230819 */:
                        this.BOOKNAME = "Eng_Song_Name";
                        this.TOTALNUMBERS = this.ENGLISH_totelnumber;
                        this.Title = "HYMNS";
                        sending();
                        break;
                    case R.id.enter_eng /* 2131230820 */:
                        this.BOOKNAME = "Eng_Song_Name";
                        this.TOTALNUMBERS = this.ENGLISH_totelnumber;
                        this.Title = "HYMNS";
                        englishSongs();
                        break;
                    case R.id.enter_eng_chorus /* 2131230821 */:
                        this.BOOKNAME = "Eng_Chrous_Name";
                        this.TOTALNUMBERS = this.ENGLISH_CHROUS_totelnumber;
                        this.Title = "CHORUSES";
                        chorusSongs();
                        break;
                    case R.id.enter_telugu /* 2131230822 */:
                        this.BOOKNAME = "Tel_Song_Name";
                        this.TOTALNUMBERS = this.TELUGU_totelnumber;
                        this.Title = "ఉజ్జీవ కీర్తనలు";
                        teluguSongs();
                        break;
                }
        }
    }

    private final void sending() {
        Index.INSTANCE.setScrollPostion("0");
        Intent intent = new Intent(getApplicationContext(), (Class<?>) Index.class);
        intent.putExtra("BOOKNAME", this.BOOKNAME);
        intent.putExtra("TOTALNUMBERS", this.TOTALNUMBERS);
        intent.putExtra("Title", this.Title);
        startActivity(intent);
        finish();
    }

    private final void sendingSong() {
        Intent intent = new Intent(getApplicationContext(), (Class<?>) Songs.class);
        intent.putExtra("TOTALNUMBERS", this.TOTALNUMBERS);
        intent.putExtra("BOOKNAME", this.BOOKNAME);
        intent.putExtra("SONGNUMBER", this.SONGNUMBER);
        intent.putExtra("Title", this.Title);
        startActivity(intent);
        finish();
    }

    private final void teluguSongs() throws NumberFormatException {
        EditText editText = this.Edit_tel_title;
        if (editText == null) {
            Intrinsics.throwNpe();
        }
        CharSequence $this$trim$iv$iv = editText.getText().toString();
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
            } else if (it == 0) {
                break;
            } else {
                endIndex$iv$iv--;
            }
        }
        String $this$trim$iv = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
        if (!Intrinsics.areEqual($this$trim$iv, BuildConfig.FLAVOR)) {
            Integer number = Integer.valueOf($this$trim$iv);
            if (Intrinsics.compare(number.intValue(), this.TOTALNUMBERS) <= 0) {
                Intrinsics.checkExpressionValueIsNotNull(number, "number");
                this.SONGNUMBER = number.intValue();
                sendingSong();
                EditText editText2 = this.Edit_tel_title;
                if (editText2 == null) {
                    Intrinsics.throwNpe();
                }
                editText2.getText().clear();
                return;
            }
            Toast.makeText(getApplicationContext(), this.TOTALNUMBERS + " Last Song ", 1).show();
        }
    }

    private final void englishSongs() throws NumberFormatException {
        EditText editText = this.Edit_eng_title;
        if (editText == null) {
            Intrinsics.throwNpe();
        }
        CharSequence $this$trim$iv$iv = editText.getText().toString();
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
            } else if (it == 0) {
                break;
            } else {
                endIndex$iv$iv--;
            }
        }
        String $this$trim$iv = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
        if (!Intrinsics.areEqual($this$trim$iv, BuildConfig.FLAVOR)) {
            Integer number = Integer.valueOf($this$trim$iv);
            if (Intrinsics.compare(number.intValue(), this.TOTALNUMBERS) <= 0) {
                Intrinsics.checkExpressionValueIsNotNull(number, "number");
                this.SONGNUMBER = number.intValue();
                sendingSong();
                EditText editText2 = this.Edit_eng_title;
                if (editText2 == null) {
                    Intrinsics.throwNpe();
                }
                editText2.getText().clear();
                return;
            }
            Toast.makeText(getApplicationContext(), this.TOTALNUMBERS + " Last Song ", 1).show();
        }
    }

    private final void chorusSongs() throws NumberFormatException {
        EditText editText = this.Edit_eng_chorus;
        if (editText == null) {
            Intrinsics.throwNpe();
        }
        CharSequence $this$trim$iv$iv = editText.getText().toString();
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
            } else if (it == 0) {
                break;
            } else {
                endIndex$iv$iv--;
            }
        }
        String $this$trim$iv = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
        if (!Intrinsics.areEqual($this$trim$iv, BuildConfig.FLAVOR)) {
            Integer number = Integer.valueOf($this$trim$iv);
            if (Intrinsics.compare(number.intValue(), this.TOTALNUMBERS) <= 0) {
                Intrinsics.checkExpressionValueIsNotNull(number, "number");
                this.SONGNUMBER = number.intValue();
                sendingSong();
                EditText editText2 = this.Edit_eng_chorus;
                if (editText2 == null) {
                    Intrinsics.throwNpe();
                }
                editText2.getText().clear();
                return;
            }
            Toast.makeText(getApplicationContext(), this.TOTALNUMBERS + " Last Song ", 1).show();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (keyCode == 4) {
            AlertDialog ad = new AlertDialog.Builder(this).create();
            ad.setTitle("Attention");
            ad.setIcon(R.drawable.attention);
            ad.setMessage("Do you want to Exit...?");
            ad.setButton("Yes", new DialogInterface.OnClickListener() { // from class: gsg.dani.songs.MainActivity.onKeyUp.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
                    MainActivity.this.finish();
                }
            });
            ad.setButton2("No", new DialogInterface.OnClickListener() { // from class: gsg.dani.songs.MainActivity.onKeyUp.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
                }
            });
            ad.show();
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }
}