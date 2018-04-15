package ${packageName}.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.content.Intent;

import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

/**
 * Created by Raj Agrawal
 */
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
        setupAdapter();
    }

    private void setupMVP() {
            ${className}Presenter presenter = new ${className}Presenter(this);
            ${className}Main.PresenterToModel model = new ${className}Model(presenter);
            presenter.setModel(model);
            mPresenter = presenter;
    }

    private void setToolbar() {
        
    }

    private void setupAdapter(){

    }

    @Override
    public Context getAppContext() {
        return getApplicationContext();
    }

    @Override
    public Context getActivityContext() {
        return this;
    }

    @Override
    public void showProgressIndicator(boolean show) {
        if (show) {

        } else {

        }
    }

    @Override
    public void notifyDataSetChanged() {

    }

    @Override
    public void onDestroy(){
        mPresenter.onDestroy();
        super.onDestroy();
    }
}