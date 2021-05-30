--- chia/util/keychain.py.orig	2021-05-28 15:16:47.669606000 -0400
+++ chia/util/keychain.py	2021-05-28 15:50:49.682623000 -0400
@@ -22,9 +22,9 @@
     import keyring.backends.macOS
 
     keyring.set_keyring(keyring.backends.macOS.Keyring())
-elif platform == "linux":
+elif platform == "linux" or platform.startswith("freebsd"):
     keyring = CryptFileKeyring()
-    keyring.keyring_key = "your keyring password"  # type: ignore
+    keyring.keyring_key = input("Enter your keyring password: ")
 else:
     keyring = keyring_main
