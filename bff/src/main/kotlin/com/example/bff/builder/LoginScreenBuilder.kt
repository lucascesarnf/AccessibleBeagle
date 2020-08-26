package com.example.bff.builder

import br.com.zup.beagle.core.Style
import br.com.zup.beagle.ext.applyStyle
import br.com.zup.beagle.ext.unitReal
import br.com.zup.beagle.widget.core.AlignSelf
import br.com.zup.beagle.widget.core.EdgeValue
import br.com.zup.beagle.widget.core.Flex
import br.com.zup.beagle.widget.layout.Container
import br.com.zup.beagle.widget.layout.Screen
import br.com.zup.beagle.widget.layout.ScreenBuilder
import br.com.zup.beagle.widget.ui.Button
import br.com.zup.beagle.widget.ui.Text

object LoginScreenBuilder : ScreenBuilder {
    override fun build() = Screen(
            child = Container(
                    children = listOf(
                            Text(
                                    text = "Login"
                            ).applyStyle(
                                    Style(margin = EdgeValue(top = 16.unitReal()),
                                            flex = Flex(alignSelf = AlignSelf.CENTER)
                                    )
                            ),
                            Button(text = "LOG IN")
                    )
            )
    )
}