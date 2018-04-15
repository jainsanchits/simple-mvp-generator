package ${packageName}.base;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;

/**
 * Created by raj on 15/04/18.
 */

public interface IRecyclerBaseViewToPresenter {

    int getItemViewType(int position);
    RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType);
    void onBindViewHolder(RecyclerView.ViewHolder holder, int position);
    void onBindViewHolder(RecyclerView.ViewHolder holder, int position, List<Object> payloads);
    void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state);
    void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state, Drawable drawable);
    int getItemCount();
}
