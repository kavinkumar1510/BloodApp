// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class ListRow2Binding implements ViewBinding {
  @NonNull
  private final TableLayout rootView;

  @NonNull
  public final TextView bty;

  @NonNull
  public final TextView ctn;

  @NonNull
  public final TextView rdt;

  @NonNull
  public final TextView rsn;

  @NonNull
  public final TextView rtm;

  @NonNull
  public final TextView unm;

  private ListRow2Binding(@NonNull TableLayout rootView, @NonNull TextView bty,
      @NonNull TextView ctn, @NonNull TextView rdt, @NonNull TextView rsn, @NonNull TextView rtm,
      @NonNull TextView unm) {
    this.rootView = rootView;
    this.bty = bty;
    this.ctn = ctn;
    this.rdt = rdt;
    this.rsn = rsn;
    this.rtm = rtm;
    this.unm = unm;
  }

  @Override
  @NonNull
  public TableLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static ListRow2Binding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static ListRow2Binding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.list_row2, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static ListRow2Binding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.bty;
      TextView bty = ViewBindings.findChildViewById(rootView, id);
      if (bty == null) {
        break missingId;
      }

      id = R.id.ctn;
      TextView ctn = ViewBindings.findChildViewById(rootView, id);
      if (ctn == null) {
        break missingId;
      }

      id = R.id.rdt;
      TextView rdt = ViewBindings.findChildViewById(rootView, id);
      if (rdt == null) {
        break missingId;
      }

      id = R.id.rsn;
      TextView rsn = ViewBindings.findChildViewById(rootView, id);
      if (rsn == null) {
        break missingId;
      }

      id = R.id.rtm;
      TextView rtm = ViewBindings.findChildViewById(rootView, id);
      if (rtm == null) {
        break missingId;
      }

      id = R.id.unm;
      TextView unm = ViewBindings.findChildViewById(rootView, id);
      if (unm == null) {
        break missingId;
      }

      return new ListRow2Binding((TableLayout) rootView, bty, ctn, rdt, rsn, rtm, unm);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}