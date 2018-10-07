package ${packageName}.presenter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.base.ErrorPresenter;
import ${packageName}.${className}Main;

import java.util.List;

/**
 * Created by Raj Agrawal
 */
class ${className}Presenter(view: ${className}Main.PresenterToView) : ErrorPresenter<${className}Main.PresenterToView>(view), ${className}Main.ModelToPresenter, ${className}Main.ViewToPresenter {
    override fun setView(viewInstance: ${className}Main.PresenterToView) {
        view = viewInstance
    }

    private var model: ${className}Main.PresenterToModel? = null

    override val appContext: Context?
        get() = view?.appContext

    override val activityContext: Context?
        get() = view?.activityContext

    override fun showProgressIndicator(show: Boolean) {
        if (view != null) view?.showProgressIndicator(show)
    }

    override fun setModel(model: ${className}Main.PresenterToModel) {
        this.model = model
    }

    override fun loadData() {
        model?.loadData()
    }

    override fun onDestroy() {
        model?.onDestroy()
    }

    override fun notifyDataSetChanged() {
        view?.notifyDataSetChanged()
    }
}