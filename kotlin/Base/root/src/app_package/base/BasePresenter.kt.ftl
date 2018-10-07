package ${packageName}.base;

import java.lang.ref.WeakReference;

/**
 * Created by raj on 15/04/18.
 */
open class BasePresenter<T>(view: T) {
    protected var mView: WeakReference<T>? = null

    init {
        mView = WeakReference(view)
    }

    protected open var view: T?
        @Throws(NullPointerException::class)
        get() = mView?.get() ?: throw NullPointerException("View is unavailable")
        set(view) {
            mView = WeakReference(view!!)
        }

    protected open fun onDestroy() {
        mView = null
    }
}
