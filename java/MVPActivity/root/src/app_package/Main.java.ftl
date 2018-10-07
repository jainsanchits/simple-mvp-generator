package ${packageName};

import ${packageName}.base.IContext;
import ${packageName}.base.IShowError;

/**
 * Created by Raj Agrawal
 */
public interface ${className}Main {

    interface ModelToPresenter extends IContext, IShowError {
        void showProgressIndicator(boolean show);
        void notifyDataSetChanged();
    }

    interface ViewToPresenter {
        void setModel(${className}Main.PresenterToModel model);

        void setView(${className}Main.PresenterToView view);

        void loadData();

        void onDestroy();
    }

    interface PresenterToView extends IContext {
        void showProgressIndicator(boolean show);
        void notifyDataSetChanged();
    }

    interface PresenterToModel {
        void loadData();

        void onDestroy();
    }
}