package ${packageName}.base;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

/**
 * Created by raj on 15/04/18.
 */

public class ErrorPresenter<T> extends BasePresenter<T> implements IShowError {
    private Activity activity;
    private FragmentManager manager;

    public ErrorPresenter(T view) {
        super(view);
        if (getView() instanceof IContext) {
            activity = (Activity) ((IContext) getView()).getActivityContext();
            manager = ((FragmentActivity)activity).getSupportFragmentManager();
        }
    }

    @Override
    public void showErrorFragment() {
        
    }

    @Override
    public void showNoResultActivity() {

    }
}
