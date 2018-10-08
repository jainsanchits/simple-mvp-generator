package ${packageName}

import com.uberfables.library.simple.mvp.generator.base.kotlin.IContext
import com.uberfables.library.simple.mvp.generator.base.kotlin.IShowError

interface ${className}Main {

    interface ModelToPresenter : IContext, IShowError {
        fun notifyDataSetChanged()
        fun onDataLoaded(list: List<*>)
    }

    interface ViewToPresenter {
        fun setModel(model: ${className}Main.PresenterToModel)

        fun setView(view: ${className}Main.PresenterToView)

        fun loadData()

        fun onDestroy()
    }

    interface PresenterToView : IContext {
        fun notifyDataSetChanged()
        fun onError(message: String)
        fun onDataLoaded(list: List<*>)
    }

    interface PresenterToModel {
        fun loadData()

        fun onDestroy()
    }
}