<div class="modal-body">
                        <form action="" novalidate autocomplete="off" class="idealforms reg">

                            <div class="log-header">
                                <span class="log-in">Inscription</span>
                            </div>

                            <div class="field">
                                <input name="nom" id="nom" type="text" placeholder="Nom">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="email" id="email" type="email"  placeholder="Email">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="phone" id="phone" type="text"  placeholder="Phone">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="cle" id="cle" type="text"  placeholder="cle">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input type="password" name="password" id="password" placeholder="Password">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="confirmpass" id="confirmpass" type="password"  placeholder="confirmpass">
                                <span class="error"></span>
                            </div>

                            <select class="custom-select" id="active">
                                <option value="default">Active ..</option>
                                <option value="0">Non Active</option>
                                <option value="1">Active</option>
                            </select>
                            </br>
                            <select class="custom-select" id="profil">
                                <option value="default">Profil :</option>
                                <option value="Admin">Admin</option>
                                <option value="User">User</option>
                            </select>
                            </br>
                            <input type="file" name="file" id="file" class="active"/>
                            

                            <div class="field buttons">
                                <button type="submit" class="submit btn green-color" onclick="addUser()">Sign up</button>
                            

                        </form><!-- end .reg -->
                    </div><!-- end .modal-body -->

                </div><!-- end .modal-content -->