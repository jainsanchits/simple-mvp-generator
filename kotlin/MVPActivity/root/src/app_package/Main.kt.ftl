package ${packageName};

import ${packageName}.base.IContext;
import ${packageName}.base.IShowError;

/**
 * Created by Raj Agrawal
 */
interface ${className}Main {

    interface ModelToPresenter : IContext, IShowError {
        fun showProgressIndicator(show: Boolean)

        fun notifyDataSetChanged()
    }

    interface ViewToPresenter {
        fun setModel(model: ${className}Main.PresenterToModel)

        fun loadData()

        fun onDestroy()
    }

    interface PresenterToView : IContext {
        fun showProgressIndicator(show: Boolean)

        fun notifyDataSetChanged()
    }

    interface PresenterToModel {
        fun loadData()

        fun onDestroy()
    }
}