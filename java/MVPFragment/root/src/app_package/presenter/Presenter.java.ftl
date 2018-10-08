package ${packageName}.presenter;

import android.content.Context;

import java.util.List;

import ${packageName}.${className}Main;

import com.uberfables.library.simple.mvp.generator.base.kotlin.BasePresenter
import com.uberfables.library.simple.mvp.generator.base.kotlin.IShowError

class ${className}Presenter(view: ${className}Main.PresenterToView) : BasePresenter<${className}Main.PresenterToView>(view), ${className}Main.ModelToPresenter, ${className}Main.ViewToPresenter, IShowError {

    private lateinit var model: ${className}Main.PresenterToModel

    override fun getAppContext(): Context? {
        return view?.appContext
    }

    override fun getActivityContext(): Context? {
        return view?.activityContext
    }

    override fun setView(view: ${className}Main.PresenterToView) {
        super.view = view
    }
    
    override fun setModel(model: ${className}Main.PresenterToModel) {
        this.model = model
    }

    override fun loadData() {
        model.loadData()
    }

    override fun onDestroy() {
        model.onDestroy()
    }

    override fun notifyDataSetChanged() {
        view?.notifyDataSetChanged()
    }

    override fun onDataLoaded(list: List<*>) {
        view?.onDataLoaded(list)
    }

    override fun onError(message: String) {
        view?.onError(message)
    }
}