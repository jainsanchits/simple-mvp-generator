package ${packageName}.base;

import java.lang.ref.WeakReference;

/**
 * Created by raj on 15/04/18.
 */

public class BasePresenter<T> {
    protected WeakReference<T> mView;

    public BasePresenter(T view) {
        mView = new WeakReference<>(view);
    }

    protected void setView(T view) {
        mView = new WeakReference<>(view);
    }

    protected T getView() throws NullPointerException{
        if ( mView != null )
            return mView.get();
        else
            throw new NullPointerException("View is unavailable");
    }

    protected void onDestroy() {
        mView = null;
    }
}
