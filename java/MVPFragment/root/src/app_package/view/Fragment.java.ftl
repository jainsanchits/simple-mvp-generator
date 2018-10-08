package ${packageName}.view;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

public class ${className}Fragment extends Fragment implements ${className}Main.PresenterToView {

    // TODO: Rename parameter arguments, choose names that match
    // the ${className} initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private ${className}Main.ViewToPresenter mPresenter;

    private View rootView;

    public ${className}Fragment() {
        // Required empty public constructor
    }

    // TODO: Rename and change types and number of parameters
    public static ${className}Fragment newInstance(String param1, String param2) {
        ${className}Fragment fragment= new ${className}Fragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    private void retrieveBundle() {

    }

    @Override
    public void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setupMVP();
        retrieveBundle();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this ${className}
        // rootView =  inflater.inflate(R.layout.your_${className}_layout, container, false);
        return rootView;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        loadData();
    }

    private void setupMVP() {
        ${className}Presenter presenter = new ${className}Presenter(this);
        ${className}Main.PresenterToModel model = new ${className}Model(presenter);
        presenter.setModel(model);
        mPresenter = presenter;
        mPresenter.setView(this);
    }

    private void showProgressIndicator(boolean show) {
        if (show) {

        } else {

        }
    }

    private void loadData() {
        mPresenter.loadData();
    }

    @Override
    public void notifyDataSetChanged() {

    }

    @Override
    public void onError(String message) {
        // show a dialog-box or anything that indicates error to the user, along with the message.
    }

    @Override
    public void onDataLoaded(List list) {

    }

    @Override
    public void onDestroy() {
        mPresenter.onDestroy();
        super.onDestroy();
    }

    @Override
    public Context getAppContext() {
        return this.getAppContext();
    }

    @Override
    public Context getActivityContext() {
        return this.requireContext();
    }
}