package ${packageName}.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import android.support.v4.app.Fragment;

import com.stylabs.styfi.app.R;
import com.stylabs.styfi.app.StyFi;
import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

/**
 * Created by Raj Agrawal
 */
public class ${className}Fragment extends Fragment implements ${className}Main.PresenterToView {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private ${className}Main.ViewToPresenter mPresenter;

    private View rootView;
    private Context mContext;

    public ${className}Fragment() {
        // Required empty public constructor
    }

    // TODO: Rename and change types and number of parameters
    public static ${className}Fragment newInstance(String param1, String param2) {
        ${className}Fragment fragment = new ${className}Fragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        mContext = context;
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
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        // rootView =  inflater.inflate(R.layout.your_fragment_layout, container, false);
        return rootView;
    }

    private void setupMVP() {
            ${className}Presenter presenter = new ${className}Presenter(this);
            ${className}Main.PresenterToModel model = new ${className}Model(presenter);
            presenter.setModel(model);
            mPresenter = presenter;
            mPresenter.setView(this);
    }

    @Override
    public Context getAppContext() {
        return getActivityContext().getApplicationContext();
    }

    @Override
    public Context getActivityContext() {
        return mContext;
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