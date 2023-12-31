// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class ActivityViewHospitalBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final RelativeLayout activityMain;

  @NonNull
  public final LinearLayout li1;

  @NonNull
  public final RecyclerView recyclerview10;

  @NonNull
  public final TextView vac;

  private ActivityViewHospitalBinding(@NonNull ConstraintLayout rootView,
      @NonNull RelativeLayout activityMain, @NonNull LinearLayout li1,
      @NonNull RecyclerView recyclerview10, @NonNull TextView vac) {
    this.rootView = rootView;
    this.activityMain = activityMain;
    this.li1 = li1;
    this.recyclerview10 = recyclerview10;
    this.vac = vac;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static ActivityViewHospitalBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static ActivityViewHospitalBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.activity_view_hospital, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static ActivityViewHospitalBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.activity_main;
      RelativeLayout activityMain = ViewBindings.findChildViewById(rootView, id);
      if (activityMain == null) {
        break missingId;
      }

      id = R.id.li1;
      LinearLayout li1 = ViewBindings.findChildViewById(rootView, id);
      if (li1 == null) {
        break missingId;
      }

      id = R.id.recyclerview10;
      RecyclerView recyclerview10 = ViewBindings.findChildViewById(rootView, id);
      if (recyclerview10 == null) {
        break missingId;
      }

      id = R.id.vac;
      TextView vac = ViewBindings.findChildViewById(rootView, id);
      if (vac == null) {
        break missingId;
      }

      return new ActivityViewHospitalBinding((ConstraintLayout) rootView, activityMain, li1,
          recyclerview10, vac);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
