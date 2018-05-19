package ${packageName}.model;

import ${packageName}.${className}Main;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Raj Agrawal
 */
public class ${className}Model implements ${className}Main.PresenterToModel {

    private ${className}Main.ModelToPresenter mPresenter;

// private List<Call<ApiResponse<JsonElement>>> callList = new ArrayList<>();

    public ${className}Model(${className}Main.ModelToPresenter presenter) {
        this.mPresenter = presenter;
    }

    @Override
    public void loadData() {

    }

    @Override
    public int getItemCount() {
        return 0;
    }

    @Override
    public void onDestroy(){

//        for (int index = 0; index < callList.size(); index++) {
//            if (callList.get(index) != null && !callList.get(index).isCanceled()) {
//                callList.get(index).cancel();
//            }
//        }
    }
}