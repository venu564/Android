package gsg.dani.songs.adapters;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gsg.dani.songs.BuildConfig;
import gsg.dani.songs.R;
import gsg.dani.songs.db.StringsDetails;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IndexAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u001c\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000eH\u0016R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lgsg/dani/songs/adapters/IndexAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;", "mContext", "Landroid/content/Context;", "DetailsModels", BuildConfig.FLAVOR, "Lgsg/dani/songs/db/StringsDetails;", "(Landroid/content/Context;Ljava/util/List;)V", "getDetailsModels", "()Ljava/util/List;", "setDetailsModels", "(Ljava/util/List;)V", "getItemCount", BuildConfig.FLAVOR, "onBindViewHolder", BuildConfig.FLAVOR, "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "ViewHolder", "app_debug"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes.dex */
public final class IndexAdapter extends RecyclerView.Adapter<ViewHolder> {
    private List<StringsDetails> DetailsModels;
    private final Context mContext;

    public IndexAdapter(Context mContext, List<StringsDetails> DetailsModels) {
        Intrinsics.checkParameterIsNotNull(mContext, "mContext");
        Intrinsics.checkParameterIsNotNull(DetailsModels, "DetailsModels");
        this.mContext = mContext;
        this.DetailsModels = DetailsModels;
    }

    public final List<StringsDetails> getDetailsModels() {
        return this.DetailsModels;
    }

    public final void setDetailsModels(List<StringsDetails> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.DetailsModels = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.index_adapter, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(v, "v");
        return new ViewHolder(this, v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        StringsDetails model = this.DetailsModels.get(position);
        Typeface font = Typeface.createFromAsset(this.mContext.getAssets(), "telugu_read.ttf");
        holder.getNumber().setText(String.valueOf(model.getId()) + ". ");
        holder.getSongName().setText(model.getSongName());
        holder.getSongName().setTypeface(font);
        holder.getNumber().setTypeface(font);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.DetailsModels.size();
    }

    /* compiled from: IndexAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "v", "Landroid/view/View;", "(Lgsg/dani/songs/adapters/IndexAdapter;Landroid/view/View;)V", "number", "Landroid/widget/TextView;", "getNumber", "()Landroid/widget/TextView;", "setNumber", "(Landroid/widget/TextView;)V", "songName", "getSongName", "setSongName", "app_debug"}, k = 1, mv = {1, 1, 15})
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private TextView number;
        private TextView songName;
        final /* synthetic */ IndexAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(IndexAdapter $outer, View v) {
            super(v);
            Intrinsics.checkParameterIsNotNull(v, "v");
            this.this$0 = $outer;
            View viewFindViewById = v.findViewById(R.id.Songname);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.songName = (TextView) viewFindViewById;
            View viewFindViewById2 = v.findViewById(R.id.number);
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.number = (TextView) viewFindViewById2;
        }

        public final TextView getSongName() {
            return this.songName;
        }

        public final void setSongName(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.songName = textView;
        }

        public final TextView getNumber() {
            return this.number;
        }

        public final void setNumber(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.number = textView;
        }
    }
}