package ${packageName}.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.content.Intent;

import java.util.List;

import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

public class ${className}Activity extends Activity implements ${className}Main.PresenterToView {

    private ${className}Main.ViewToPresenter mPresenter;

    public static Intent getIntent(Context context) {
        return new Intent(context, ${className}Activity.class);
    }

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setToolbar();
        setupMVP();
        loadData();
    }

    private void setupMVP() {
        ${className}Presenter presenter = new ${className}Presenter(this);
        ${className}Main.PresenterToModel model = new ${className}Model(presenter);
        presenter.setModel(model);
        mPresenter = presenter;
    }

    private void setToolbar() {

    }

    private void loadData() {
        mPresenter.loadData();
    }

    @Override
    public void onError(String message) {
        // show a dialog-box or anything that indicates error to the user, along with the message.
    }

    @Override
    public void onDataLoaded(List list) {

    }

    private void showProgressIndicator(boolean show) {
        if (show) {

        } else {

        }
    }

    @Override
    public void notifyDataSetChanged() {

    }

    @Override
    public void onDestroy() {
        mPresenter.onDestroy();
        super.onDestroy();
    }

    @Override
    public Context getAppContext() {
        return this.getApplicationContext();
    }

    @Override
    public Context getActivityContext() {
        return this;
    }
}