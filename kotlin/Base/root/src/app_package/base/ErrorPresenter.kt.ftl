package ${packageName}.base;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

/**
 * Created by raj on 15/04/18.
 */
open class ErrorPresenter<T>(view: T) : BasePresenter<T>(view), IShowError {
    private var activity: Activity? = null
    private var manager: FragmentManager? = null

    init {
        if (view is IContext) {
            activity = (view as IContext).activityContext as Activity
            manager = (activity as FragmentActivity).supportFragmentManager
        }
    }

    override fun showOnError() {

    }
}
