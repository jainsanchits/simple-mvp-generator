package ${packageName}.presenter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.${className}Main;

import java.util.List;

/**
 * Created by Raj Agrawal
 */
public class ${className}Presenter extends ErrorPresenter<${className}Main.PresenterToView> implements ${className}Main.ModelToPresenter, ${className}Main.ViewToPresenter {

    private ${className}Main.PresenterToModel model;

    public ${className}Presenter(${className}Main.PresenterToView view) {
        super(view);
    }

    @Override
    public Context getAppContext() {
        return getView().getAppContext();
    }

    @Override
    public Context getActivityContext() {
        return getView().getActivityContext();
    }

    @Override
    public void setView(${className}Main.PresenterToView view) {
        super.setView(view);
    }

    @Override
    public void showProgressIndicator(boolean show) {
        if(getView()!=null) getView().showProgressIndicator(show);
    }

    @Override
    public int getItemViewType(int position) {
        return 0;
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return null;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position, List<Object> payloads) {

    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {

    }

    @Override
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state, Drawable drawable) {

    }

    @Override
    public int getItemCount() {
        return model.getItemCount();
    }

    @Override
    public void setModel(${className}Main.PresenterToModel model) {
        this.model = model;
    }

    @Override
    public void loadData() {
        model.loadData();
    }

    @Override
    public void onDestroy(){
        model.onDestroy();
    }

    @Override
    public void notifyDataSetChanged(){
        getView().notifyDataSetChanged();
    }
}