// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class ActivitySearchHospitalBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final EditText entsoucre;

  @NonNull
  public final ImageView imageView;

  @NonNull
  public final TextView tl111;

  @NonNull
  public final Button ubsearch;

  private ActivitySearchHospitalBinding(@NonNull ConstraintLayout rootView,
      @NonNull EditText entsoucre, @NonNull ImageView imageView, @NonNull TextView tl111,
      @NonNull Button ubsearch) {
    this.rootView = rootView;
    this.entsoucre = entsoucre;
    this.imageView = imageView;
    this.tl111 = tl111;
    this.ubsearch = ubsearch;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static ActivitySearchHospitalBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static ActivitySearchHospitalBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.activity_search_hospital, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static ActivitySearchHospitalBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.entsoucre;
      EditText entsoucre = ViewBindings.findChildViewById(rootView, id);
      if (entsoucre == null) {
        break missingId;
      }

      id = R.id.imageView;
      ImageView imageView = ViewBindings.findChildViewById(rootView, id);
      if (imageView == null) {
        break missingId;
      }

      id = R.id.tl111;
      TextView tl111 = ViewBindings.findChildViewById(rootView, id);
      if (tl111 == null) {
        break missingId;
      }

      id = R.id.ubsearch;
      Button ubsearch = ViewBindings.findChildViewById(rootView, id);
      if (ubsearch == null) {
        break missingId;
      }

      return new ActivitySearchHospitalBinding((ConstraintLayout) rootView, entsoucre, imageView,
          tl111, ubsearch);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
