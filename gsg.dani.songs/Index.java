package gsg.dani.songs;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gsg.dani.songs.adapters.IndexAdapter;
import gsg.dani.songs.db.DBinRAW;
import gsg.dani.songs.db.StringsDetails;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Index.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lgsg/dani/songs/Index;", "Landroid/app/Activity;", "()V", "RecyclerViewItemPosition", BuildConfig.FLAVOR, "getRecyclerViewItemPosition$app_debug", "()I", "setRecyclerViewItemPosition$app_debug", "(I)V", "Title", BuildConfig.FLAVOR, "getTitle$app_debug", "()Ljava/lang/String;", "setTitle$app_debug", "(Ljava/lang/String;)V", "listarray", "Ljava/util/ArrayList;", "Lgsg/dani/songs/db/StringsDetails;", "getListarray$app_debug", "()Ljava/util/ArrayList;", "setListarray$app_debug", "(Ljava/util/ArrayList;)V", "dbQuery", BuildConfig.FLAVOR, "itemClick", "nameSearch", "numberSearch", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", BuildConfig.FLAVOR, "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "Companion", "app_debug"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes.dex */
public final class Index extends Activity {
    private static String BOOKNAME;
    private static int TOTALNUMBERS;
    private int RecyclerViewItemPosition;
    private HashMap _$_findViewCache;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static String Search_String = "%";
    private static String Column_Name = "Number";
    private static String scrollPostion = "0";
    private static int selectedIndex = -1;
    private ArrayList<StringsDetails> listarray = new ArrayList<>();
    private String Title = BuildConfig.FLAVOR;

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

    public final ArrayList<StringsDetails> getListarray$app_debug() {
        return this.listarray;
    }

    public final void setListarray$app_debug(ArrayList<StringsDetails> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.listarray = arrayList;
    }

    /* renamed from: getRecyclerViewItemPosition$app_debug, reason: from getter */
    public final int getRecyclerViewItemPosition() {
        return this.RecyclerViewItemPosition;
    }

    public final void setRecyclerViewItemPosition$app_debug(int i) {
        this.RecyclerViewItemPosition = i;
    }

    /* renamed from: getTitle$app_debug, reason: from getter */
    public final String getTitle() {
        return this.Title;
    }

    public final void setTitle$app_debug(String str) {
        this.Title = str;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.index);
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            Intrinsics.throwNpe();
        }
        TOTALNUMBERS = extras.getInt("TOTALNUMBERS");
        BOOKNAME = extras.getString("BOOKNAME");
        this.Title = extras.getString("Title");
        dbQuery();
        if (Intrinsics.areEqual(BOOKNAME, "Eng_Song_Name") || Intrinsics.areEqual(BOOKNAME, "Eng_Chrous_Name")) {
            nameSearch();
            numberSearch();
        } else {
            EditText searchBYname = (EditText) _$_findCachedViewById(R.id.searchBYname);
            Intrinsics.checkExpressionValueIsNotNull(searchBYname, "searchBYname");
            searchBYname.setVisibility(8);
            TextView textView = (TextView) _$_findCachedViewById(R.id.divider__);
            if (textView == null) {
                Intrinsics.throwNpe();
            }
            textView.setVisibility(8);
            numberSearch();
        }
        itemClick();
    }

    private final void itemClick() {
        ((RecyclerView) _$_findCachedViewById(R.id.RecycleViewList)).addOnItemTouchListener(new RecyclerView.OnItemTouchListener() { // from class: gsg.dani.songs.Index.itemClick.1
            private GestureDetector gestureDetector;

            {
                this.gestureDetector = new GestureDetector(Index.this.getApplicationContext(), new GestureDetector.SimpleOnGestureListener() { // from class: gsg.dani.songs.Index$itemClick$1$gestureDetector$1
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onSingleTapUp(MotionEvent motionEvent) {
                        Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
                        return true;
                    }
                });
            }

            /* renamed from: getGestureDetector$app_debug, reason: from getter */
            public final GestureDetector getGestureDetector() {
                return this.gestureDetector;
            }

            public final void setGestureDetector$app_debug(GestureDetector gestureDetector) {
                Intrinsics.checkParameterIsNotNull(gestureDetector, "<set-?>");
                this.gestureDetector = gestureDetector;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public boolean onInterceptTouchEvent(RecyclerView Recyclerview, MotionEvent motionEvent) {
                Intrinsics.checkParameterIsNotNull(Recyclerview, "Recyclerview");
                Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
                View rootView = Recyclerview.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
                if (rootView != null && this.gestureDetector.onTouchEvent(motionEvent)) {
                    Index.this.setRecyclerViewItemPosition$app_debug(Recyclerview.getChildAdapterPosition(rootView));
                    Index.INSTANCE.setSelectedIndex$app_debug(Index.this.getRecyclerViewItemPosition());
                    StringsDetails stringsDetails = Index.this.getListarray$app_debug().get(Index.this.getRecyclerViewItemPosition());
                    Intrinsics.checkExpressionValueIsNotNull(stringsDetails, "listarray[RecyclerViewItemPosition]");
                    StringsDetails model = stringsDetails;
                    int NUMBER = model.getId();
                    Intent intent = new Intent(Index.this.getApplicationContext(), (Class<?>) Songs.class);
                    intent.putExtra("TOTALNUMBERS", Index.INSTANCE.getTOTALNUMBERS());
                    intent.putExtra("BOOKNAME", Index.INSTANCE.getBOOKNAME());
                    intent.putExtra("SONGNUMBER", NUMBER);
                    intent.putExtra("Title", Index.this.getTitle());
                    Index.this.startActivity(intent);
                    EditText searchBYname = (EditText) Index.this._$_findCachedViewById(R.id.searchBYname);
                    Intrinsics.checkExpressionValueIsNotNull(searchBYname, "searchBYname");
                    searchBYname.getText().clear();
                    EditText SearchBYnumber = (EditText) Index.this._$_findCachedViewById(R.id.SearchBYnumber);
                    Intrinsics.checkExpressionValueIsNotNull(SearchBYnumber, "SearchBYnumber");
                    SearchBYnumber.getText().clear();
                    Index.this.finish();
                    return false;
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onTouchEvent(RecyclerView Recyclerview, MotionEvent motionEvent) {
                Intrinsics.checkParameterIsNotNull(Recyclerview, "Recyclerview");
                Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
            }
        });
    }

    private final void nameSearch() {
        ((EditText) _$_findCachedViewById(R.id.searchBYname)).addTextChangedListener(new TextWatcher() { // from class: gsg.dani.songs.Index.nameSearch.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                Intrinsics.checkParameterIsNotNull(s, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                Intrinsics.checkParameterIsNotNull(s, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                Intrinsics.checkParameterIsNotNull(s, "s");
                Index.INSTANCE.setColumn_Name(Index.INSTANCE.getBOOKNAME());
                Companion companion = Index.INSTANCE;
                StringBuilder sb = new StringBuilder();
                EditText searchBYname = (EditText) Index.this._$_findCachedViewById(R.id.searchBYname);
                Intrinsics.checkExpressionValueIsNotNull(searchBYname, "searchBYname");
                CharSequence $this$trim$iv = searchBYname.getText().toString();
                CharSequence $this$trim$iv$iv = $this$trim$iv;
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
                String $this$trim$iv2 = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
                sb.append($this$trim$iv2);
                sb.append("%");
                companion.setSearch_String(sb.toString());
                Index.this.getListarray$app_debug().clear();
                Index.this.dbQuery();
            }
        });
    }

    private final void numberSearch() {
        ((EditText) _$_findCachedViewById(R.id.SearchBYnumber)).addTextChangedListener(new TextWatcher() { // from class: gsg.dani.songs.Index.numberSearch.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                Intrinsics.checkParameterIsNotNull(s, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                Intrinsics.checkParameterIsNotNull(s, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                Intrinsics.checkParameterIsNotNull(s, "s");
                Index.INSTANCE.setColumn_Name("Number");
                Companion companion = Index.INSTANCE;
                StringBuilder sb = new StringBuilder();
                EditText SearchBYnumber = (EditText) Index.this._$_findCachedViewById(R.id.SearchBYnumber);
                Intrinsics.checkExpressionValueIsNotNull(SearchBYnumber, "SearchBYnumber");
                CharSequence $this$trim$iv = SearchBYnumber.getText().toString();
                CharSequence $this$trim$iv$iv = $this$trim$iv;
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
                String $this$trim$iv2 = $this$trim$iv$iv.subSequence(startIndex$iv$iv, endIndex$iv$iv + 1).toString();
                sb.append($this$trim$iv2);
                sb.append("%");
                companion.setSearch_String(sb.toString());
                Index.this.getListarray$app_debug().clear();
                Index.this.dbQuery();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dbQuery() {
        try {
            DBinRAW db = new DBinRAW(this);
            List contacts = db.getIndexTable();
            for (StringsDetails cn : contacts) {
                int SongNumber = cn.getId();
                if (SongNumber <= TOTALNUMBERS) {
                    this.listarray.add(cn);
                }
            }
            Context applicationContext = getApplicationContext();
            Intrinsics.checkExpressionValueIsNotNull(applicationContext, "applicationContext");
            IndexAdapter myAdapter = new IndexAdapter(applicationContext, this.listarray);
            RecyclerView RecycleViewList = (RecyclerView) _$_findCachedViewById(R.id.RecycleViewList);
            Intrinsics.checkExpressionValueIsNotNull(RecycleViewList, "RecycleViewList");
            RecycleViewList.setLayoutManager(new LinearLayoutManager(getApplicationContext(), 1, false));
            RecyclerView RecycleViewList2 = (RecyclerView) _$_findCachedViewById(R.id.RecycleViewList);
            Intrinsics.checkExpressionValueIsNotNull(RecycleViewList2, "RecycleViewList");
            RecycleViewList2.setItemAnimator(new DefaultItemAnimator());
            RecyclerView RecycleViewList3 = (RecyclerView) _$_findCachedViewById(R.id.RecycleViewList);
            Intrinsics.checkExpressionValueIsNotNull(RecycleViewList3, "RecycleViewList");
            RecycleViewList3.setAdapter(myAdapter);
            ((RecyclerView) _$_findCachedViewById(R.id.RecycleViewList)).setHasFixedSize(true);
            RecyclerView RecycleViewList4 = (RecyclerView) _$_findCachedViewById(R.id.RecycleViewList);
            Intrinsics.checkExpressionValueIsNotNull(RecycleViewList4, "RecycleViewList");
            RecycleViewList4.setNestedScrollingEnabled(false);
            ((RecyclerView) _$_findCachedViewById(R.id.RecycleViewList)).scrollToPosition(Integer.parseInt(scrollPostion));
        } catch (Exception e) {
            System.out.println((Object) ("___error " + e));
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (keyCode == 4) {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) MainActivity.class);
            startActivity(intent);
            overridePendingTransition(R.animator.zoom_exit, R.animator.zoom_exit);
            EditText editText = (EditText) _$_findCachedViewById(R.id.searchBYname);
            if (editText == null) {
                Intrinsics.throwNpe();
            }
            editText.getText().clear();
            EditText SearchBYnumber = (EditText) _$_findCachedViewById(R.id.SearchBYnumber);
            Intrinsics.checkExpressionValueIsNotNull(SearchBYnumber, "SearchBYnumber");
            SearchBYnumber.getText().clear();
            finish();
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    /* compiled from: Index.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014¨\u0006\u001b"}, d2 = {"Lgsg/dani/songs/Index$Companion;", BuildConfig.FLAVOR, "()V", "BOOKNAME", BuildConfig.FLAVOR, "getBOOKNAME", "()Ljava/lang/String;", "setBOOKNAME", "(Ljava/lang/String;)V", "Column_Name", "getColumn_Name", "setColumn_Name", "Search_String", "getSearch_String", "setSearch_String", "TOTALNUMBERS", BuildConfig.FLAVOR, "getTOTALNUMBERS", "()I", "setTOTALNUMBERS", "(I)V", "scrollPostion", "getScrollPostion", "setScrollPostion", "selectedIndex", "getSelectedIndex$app_debug", "setSelectedIndex$app_debug", "app_debug"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        public final String getBOOKNAME() {
            return Index.BOOKNAME;
        }

        public final void setBOOKNAME(String str) {
            Index.BOOKNAME = str;
        }

        public final int getTOTALNUMBERS() {
            return Index.TOTALNUMBERS;
        }

        public final void setTOTALNUMBERS(int i) {
            Index.TOTALNUMBERS = i;
        }

        public final String getSearch_String() {
            return Index.Search_String;
        }

        public final void setSearch_String(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            Index.Search_String = str;
        }

        public final String getColumn_Name() {
            return Index.Column_Name;
        }

        public final void setColumn_Name(String str) {
            Index.Column_Name = str;
        }

        public final String getScrollPostion() {
            return Index.scrollPostion;
        }

        public final void setScrollPostion(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            Index.scrollPostion = str;
        }

        public final int getSelectedIndex$app_debug() {
            return Index.selectedIndex;
        }

        public final void setSelectedIndex$app_debug(int i) {
            Index.selectedIndex = i;
        }
    }
}