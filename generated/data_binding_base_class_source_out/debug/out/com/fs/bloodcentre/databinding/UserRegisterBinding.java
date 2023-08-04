// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import com.google.android.material.textfield.TextInputEditText;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class UserRegisterBinding implements ViewBinding {
  @NonNull
  private final RelativeLayout rootView;

  @NonNull
  public final TextInputEditText edob;

  @NonNull
  public final TextInputEditText eemail;

  @NonNull
  public final TextInputEditText epassword;

  @NonNull
  public final TextView header;

  @NonNull
  public final TextInputEditText paddress;

  @NonNull
  public final TextInputEditText pcontact;

  @NonNull
  public final TextInputEditText pname;

  @NonNull
  public final Button preg;

  @NonNull
  public final RadioGroup prrg;

  @NonNull
  public final TextView textView;

  private UserRegisterBinding(@NonNull RelativeLayout rootView, @NonNull TextInputEditText edob,
      @NonNull TextInputEditText eemail, @NonNull TextInputEditText epassword,
      @NonNull TextView header, @NonNull TextInputEditText paddress,
      @NonNull TextInputEditText pcontact, @NonNull TextInputEditText pname, @NonNull Button preg,
      @NonNull RadioGroup prrg, @NonNull TextView textView) {
    this.rootView = rootView;
    this.edob = edob;
    this.eemail = eemail;
    this.epassword = epassword;
    this.header = header;
    this.paddress = paddress;
    this.pcontact = pcontact;
    this.pname = pname;
    this.preg = preg;
    this.prrg = prrg;
    this.textView = textView;
  }

  @Override
  @NonNull
  public RelativeLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static UserRegisterBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static UserRegisterBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.user_register, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static UserRegisterBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.edob;
      TextInputEditText edob = ViewBindings.findChildViewById(rootView, id);
      if (edob == null) {
        break missingId;
      }

      id = R.id.eemail;
      TextInputEditText eemail = ViewBindings.findChildViewById(rootView, id);
      if (eemail == null) {
        break missingId;
      }

      id = R.id.epassword;
      TextInputEditText epassword = ViewBindings.findChildViewById(rootView, id);
      if (epassword == null) {
        break missingId;
      }

      id = R.id.header;
      TextView header = ViewBindings.findChildViewById(rootView, id);
      if (header == null) {
        break missingId;
      }

      id = R.id.paddress;
      TextInputEditText paddress = ViewBindings.findChildViewById(rootView, id);
      if (paddress == null) {
        break missingId;
      }

      id = R.id.pcontact;
      TextInputEditText pcontact = ViewBindings.findChildViewById(rootView, id);
      if (pcontact == null) {
        break missingId;
      }

      id = R.id.pname;
      TextInputEditText pname = ViewBindings.findChildViewById(rootView, id);
      if (pname == null) {
        break missingId;
      }

      id = R.id.preg;
      Button preg = ViewBindings.findChildViewById(rootView, id);
      if (preg == null) {
        break missingId;
      }

      id = R.id.prrg;
      RadioGroup prrg = ViewBindings.findChildViewById(rootView, id);
      if (prrg == null) {
        break missingId;
      }

      id = R.id.textView;
      TextView textView = ViewBindings.findChildViewById(rootView, id);
      if (textView == null) {
        break missingId;
      }

      return new UserRegisterBinding((RelativeLayout) rootView, edob, eemail, epassword, header,
          paddress, pcontact, pname, preg, prrg, textView);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
