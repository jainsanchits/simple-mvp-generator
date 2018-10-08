package ${packageName}.model;

import ${packageName}.${className}Main;

public class ${className}Model implements ${className}Main.PresenterToModel {

    private ${className}Main.ModelToPresenter mPresenter;

    /**
     * If you don't use Retrofit, replace "RetrofitCall" with the network call instance of your preference,
     */
// private List<Call<RetrofitCall>> callList = new ArrayList<>();
    public ${className}Model(${className}Main.ModelToPresenter presenter) {
        this.mPresenter = presenter;
    }

    @Override
    public void loadData() {

    }

    @Override
    public void onDestroy() {

//        for (int index = 0; index < callList.size(); index++) {
//            if (callList.get(index) != null && !callList.get(index).isCanceled()) {
//                callList.get(index).cancel();
//            }
//        }
    }
}